const BigQuery = require('BigQuery');
const encodeUriComponent = require('encodeUriComponent');
const getAllEventData = require('getAllEventData');
const getContainerVersion = require('getContainerVersion');
const getRequestHeader = require('getRequestHeader');
const getTimestampMillis = require('getTimestampMillis');
const getType = require('getType');
const JSON = require('JSON');
const logToConsole = require('logToConsole');
const makeString = require('makeString');
const Object = require('Object');
const sendHttpRequest = require('sendHttpRequest');
const sha256Sync = require('sha256Sync');

/*==============================================================================
==============================================================================*/

const traceId = getRequestHeader('trace-id');

const eventData = getAllEventData();

const useOptimisticScenario = isUIFieldTrue(data.useOptimisticScenario);

if (!isConsentGivenOrNotRequired()) {
  return data.gtmOnSuccess();
}

const url = eventData.page_location || getRequestHeader('referer');
if (url && url.lastIndexOf('https://gtm-msr.appspot.com/', 0) === 0) {
  return data.gtmOnSuccess();
}

const mappedData = getDataForAudienceDataUpload(data, eventData);

const invalidFields = validateMappedData(mappedData);
if (invalidFields) {
  log({
    Name: 'GoogleCustomerMatch',
    Type: 'Message',
    TraceId: traceId,
    EventName:
      data.audienceAction +
      ' | Audience ID(s): ' +
      mappedData.destinations.map((d) => d.productDestinationId).join(','),
    Message: 'Request was not sent.',
    Reason: invalidFields
  });

  return data.gtmOnFailure();
}

sendRequest(data, mappedData);

if (useOptimisticScenario) {
  return data.gtmOnSuccess();
}

/*==============================================================================
  Vendor related functions
==============================================================================*/

function addDestinationsData(data, mappedData) {
  const destinations = [];
  const accountsAndDestinationsFromUI = data.stapeAuthDestinationsList;

  accountsAndDestinationsFromUI.forEach((row) => {
    const destination = {
      productDestinationId: 'stape_' + makeString(row.productDestinationId).trim(),
      operatingAccount: {
        product: row.product,
        accountId: makeString(row.operatingAccountId)
      }
    };

    if (data.authFlow === 'stape' && row.linkedAccountId) {
      destination.linkedAccount = {
        product: row.product,
        accountId: makeString(row.linkedAccountId)
      };
    }

    destinations.push(destination);
  });

  mappedData.destinations = destinations;

  return mappedData;
}

function addTermsOfService(data, mappedData) {
  const termsOfService = {
    customerMatchTermsOfServiceStatus: data.termsOfServiceStatus
  };

  mappedData.termsOfService = termsOfService;

  return mappedData;
}

function addConsentData(data, mappedData) {
  const consent = {};
  const consentTypes = ['adUserData', 'adPersonalization'];

  consentTypes.forEach((consentType) => {
    if (!data[consentType]) return;
    consent[consentType] = data[consentType];
    mappedData.consent = consent;
  });

  return mappedData;
}

function getEmailAddressesFromEventData(eventData) {
  const eventDataUserData = eventData.user_data || {};

  let email =
    eventDataUserData.email ||
    eventDataUserData.email_address ||
    eventDataUserData.sha256_email ||
    eventDataUserData.sha256_email_address;

  const emailType = getType(email);

  if (emailType === 'string') email = [email];
  else if (emailType === 'array') email = email.length > 0 ? email : undefined;
  else if (emailType === 'object') {
    const emailsFromObject = Object.values(email);
    if (emailsFromObject.length) email = emailsFromObject;
  }

  return email;
}

function getPhoneNumbersFromEventData(eventData) {
  const eventDataUserData = eventData.user_data || {};

  let phone =
    eventDataUserData.phone ||
    eventDataUserData.phone_number ||
    eventDataUserData.sha256_phone_number;

  const phoneType = getType(phone);

  if (phoneType === 'string') phone = [phone];
  else if (phoneType === 'array') phone = phone.length > 0 ? phone : undefined;
  else if (phoneType === 'object') {
    const phonesFromObject = Object.values(phone);
    if (phonesFromObject.length) phone = phonesFromObject;
  }

  return phone;
}

function getAddressFromEventData(eventData) {
  const eventDataUserData = eventData.user_data || {};
  let eventDataUserDataAddress = {};
  const addressType = getType(eventDataUserData.address);
  if (addressType === 'object' || addressType === 'array') {
    eventDataUserDataAddress = eventDataUserData.address[0] || eventDataUserData.address;
  }

  const firstName =
    eventDataUserDataAddress.first_name || eventDataUserDataAddress.sha256_first_name;
  const lastName = eventDataUserDataAddress.last_name || eventDataUserDataAddress.sha256_last_name;
  const postalCode = eventDataUserDataAddress.postal_code;
  const regionCode = eventDataUserDataAddress.country;

  if (firstName && lastName && postalCode && regionCode) {
    return {
      givenName: makeString(firstName),
      familyName: makeString(lastName),
      postalCode: makeString(postalCode),
      regionCode: makeString(regionCode)
    };
  }
}

function addAudienceMembersData(data, eventData, mappedData) {
  const itemizeUserIdentifier = (input) => {
    const type = getType(input);
    if (type === 'array') return input.filter((e) => e);
    if (type === 'string' || type === 'number') return [input];
    return [];
  };
  const audienceMemberIDsLengthLimit = 10;

  let audienceMembers = [];

  if (data.userMode === 'single') {
    let emailAddresses = data.hasOwnProperty('userDataEmailAddresses')
      ? data.userDataEmailAddresses
      : getEmailAddressesFromEventData(eventData);

    let phoneNumbers = data.hasOwnProperty('userDataPhoneNumbers')
      ? data.userDataPhoneNumbers
      : getPhoneNumbersFromEventData(eventData);

    let address;
    if (data.addUserDataAddress) {
      const addressUIFields = [
        'addressGivenName',
        'addressFamilyName',
        'addressRegion',
        'addressPostalCode'
      ];

      const inputHasAllAddressFields = addressUIFields.every((p) => data.hasOwnProperty(p));
      if (inputHasAllAddressFields) {
        const inputAllAddressFieldsAreValid = addressUIFields.every((p) => isValidValue(data[p]));
        if (inputAllAddressFieldsAreValid) {
          address = {
            givenName: makeString(data.addressGivenName),
            familyName: makeString(data.addressFamilyName),
            regionCode: makeString(data.addressRegion),
            postalCode: makeString(data.addressPostalCode)
          };
        }
      } else {
        address = getAddressFromEventData(eventData);
      }
    }

    if (emailAddresses || phoneNumbers || address) {
      const userIdentifiers = [];

      if (emailAddresses) {
        emailAddresses = itemizeUserIdentifier(emailAddresses);
        if (emailAddresses.length) {
          emailAddresses.forEach((email) => userIdentifiers.push({ emailAddress: email }));
        }
      }

      if (phoneNumbers) {
        phoneNumbers = itemizeUserIdentifier(phoneNumbers);
        if (phoneNumbers.length) {
          phoneNumbers.forEach((phone) => userIdentifiers.push({ phoneNumber: phone }));
        }
      }

      if (address) {
        userIdentifiers.push({
          address: address
        });
      }

      if (userIdentifiers && userIdentifiers.length) {
        audienceMembers.push({
          userData: {
            userIdentifiers: userIdentifiers.slice(0, audienceMemberIDsLengthLimit)
          }
        });
      }
    }

    if (data.mobileIds) {
      const mobileIds = itemizeUserIdentifier(data.mobileIds);
      if (mobileIds && mobileIds.length) {
        audienceMembers.push({
          mobileData: {
            mobileIds: mobileIds.slice(0, audienceMemberIDsLengthLimit)
          }
        });
      }
    }

    if (data.pairIds) {
      const pairIds = itemizeUserIdentifier(data.pairIds);
      if (pairIds && pairIds.length) {
        audienceMembers.push({
          pairData: {
            pairIds: pairIds.slice(0, audienceMemberIDsLengthLimit)
          }
        });
      }
    }
  } else if (data.userMode === 'multiple' && getType(data.audienceMembers) === 'array') {
    audienceMembers = data.audienceMembers;
  }

  mappedData.audienceMembers = audienceMembers;

  return mappedData;
}

function addEncodingData(data, mappedData) {
  // Avoids overwriting the encoding information if the tag auto-hashed (HEX output) audience data.
  mappedData.encoding = mappedData.encoding || data.audienceDataEncoding;
  return mappedData;
}

function addEncryptionData(data, mappedData) {
  const encryptionInfo = {
    gcpWrappedKeyInfo: {
      keyType: data.gcpWrappedKeyType,
      wipProvider: data.gcpWrappedKeyWipProvider,
      kekUri: data.gcpWrappedKeyKekUri,
      encryptedDek: data.gcpWrappedKeyEncryptedDek
    }
  };

  mappedData.encryptionInfo = encryptionInfo;

  return mappedData;
}

function hashDataIfNeeded(mappedData) {
  const audienceMembers = mappedData.audienceMembers;

  if (audienceMembers) {
    audienceMembers.forEach((audienceMember) => {
      if (!audienceMember) return;

      if (
        audienceMember.userData &&
        audienceMember.userData.userIdentifiers &&
        getType(audienceMember.userData.userIdentifiers) === 'array'
      ) {
        audienceMember.userData.userIdentifiers.forEach((userIdentifier) => {
          const key = Object.keys(userIdentifier)[0];

          if (key === 'emailAddress' || key === 'phoneNumber') {
            let value = userIdentifier[key];
            if (isSHA256HexHashed(value)) {
              mappedData.encoding = 'HEX';
              return;
            } else if (isSHA256Base64Hashed(value)) {
              mappedData.encoding = 'BASE64';
              return;
            }

            if (key === 'phoneNumber') {
              value = value
                .split(' ')
                .join('')
                .split('-')
                .join('')
                .split('(')
                .join('')
                .split(')')
                .join('');
              if (value[0] !== '+') value = '+' + value;
            }

            userIdentifier[key] = hashData(value);
            mappedData.encoding = 'HEX';
          } else if (key === 'address') {
            const addressKeysToHash = ['givenName', 'familyName'];
            addressKeysToHash.forEach((nameKey) => {
              const value = userIdentifier.address[nameKey];
              if (!value) return;

              if (isSHA256HexHashed(value)) {
                mappedData.encoding = 'HEX';
                return;
              } else if (isSHA256Base64Hashed(value)) {
                mappedData.encoding = 'BASE64';
                return;
              }
              userIdentifier.address[nameKey] = hashData(value);
              mappedData.encoding = 'HEX';
            });
          }
        });
      } else if (
        audienceMember.pairData &&
        audienceMember.pairData.pairIds &&
        getType(audienceMember.pairData.pairIds) === 'array'
      ) {
        audienceMember.pairData.pairIds = audienceMember.pairData.pairIds.map((pairId) => {
          if (isSHA256HexHashed(pairId)) {
            mappedData.encoding = 'HEX';
            return pairId;
          } else if (isSHA256Base64Hashed(pairId)) {
            mappedData.encoding = 'BASE64';
            return pairId;
          }
          mappedData.encoding = 'HEX';
          return hashData(pairId);
        });
      }
    });
  }

  return mappedData;
}

function generateRequestUrl(data) {
  const audienceActionNormalization = {
    ingest: 'ingest',
    remove: 'remove'
  };
  const action = audienceActionNormalization[data.audienceAction];

  const containerIdentifier = getRequestHeader('x-gtm-identifier');
  const defaultDomain = getRequestHeader('x-gtm-default-domain');
  const containerApiKey = getRequestHeader('x-gtm-api-key');
  return (
    'https://' +
    enc(containerIdentifier) +
    '.' +
    enc(defaultDomain) +
    '/stape-api/' +
    enc(containerApiKey) +
    '/v2/data-manager/' +
    action
  );
}

function generateRequestOptions() {
  const options = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    }
  };

  return options;
}

function validateMappedData(mappedData) {
  if (!mappedData.audienceMembers || mappedData.audienceMembers.length === 0) {
    return 'At least 1 Audience Member resource must be specified.';
  }

  const audienceMembersLengthLimit = 10000;
  if (mappedData.audienceMembers.length > audienceMembersLengthLimit) {
    return (
      'Audience Members list length must be at most ' +
      audienceMembersLengthLimit +
      '. Current is: ' +
      mappedData.audienceMembers.length
    );
  }

  const hasUserDataOrPairData = mappedData.audienceMembers.some((am) => am.userData || am.pairData);
  if (hasUserDataOrPairData && !mappedData.encoding) {
    return 'Encoding must be specified when sending UserData or PairData.';
  }
}

function getDataForAudienceDataUpload(data, eventData) {
  const mappedData = {
    validateOnly: isUIFieldTrue(data.validateOnly)
  };

  addDestinationsData(data, mappedData);
  if (data.audienceAction === 'ingest') {
    addTermsOfService(data, mappedData);
    addConsentData(data, mappedData);
  }
  addAudienceMembersData(data, eventData, mappedData);
  hashDataIfNeeded(mappedData); // This should come before addEncodingData().
  addEncodingData(data, mappedData);
  if (isUIFieldTrue(data.enableAudienceDataEncryption)) {
    addEncryptionData(data, mappedData);
  }

  return mappedData;
}

function sendRequest(data, mappedData) {
  const requestUrl = generateRequestUrl(data);
  const requestOptions = generateRequestOptions();
  const requestBody = mappedData;

  const logEventName =
    data.audienceAction +
    ' | Audience ID(s): ' +
    requestBody.destinations.map((d) => d.productDestinationId).join(',');

  log({
    Name: 'GoogleCustomerMatch',
    Type: 'Request',
    TraceId: traceId,
    EventName: logEventName,
    RequestMethod: 'POST',
    RequestUrl: requestUrl,
    RequestBody: requestBody
  });

  return sendHttpRequest(requestUrl, requestOptions, JSON.stringify(requestBody))
    .then((result) => {
      // .then has to be used when the Authorization header is in use
      log({
        Name: 'GoogleCustomerMatch',
        Type: 'Response',
        TraceId: traceId,
        EventName: logEventName,
        ResponseStatusCode: result.statusCode,
        ResponseHeaders: result.headers,
        ResponseBody: result.body
      });

      if (!useOptimisticScenario) {
        if (result.statusCode >= 200 && result.statusCode < 400) {
          data.gtmOnSuccess();
        } else {
          data.gtmOnFailure();
        }
      }
    })
    .catch((result) => {
      log({
        Name: 'GoogleCustomerMatch',
        Type: 'Message',
        TraceId: traceId,
        EventName: logEventName,
        Message: 'Request failed or timed out.',
        Reason: JSON.stringify(result)
      });

      if (!useOptimisticScenario) data.gtmOnFailure();
    });
}

/*==============================================================================
  Helpers
==============================================================================*/

function enc(data) {
  return encodeUriComponent(makeString(data || ''));
}

function isSHA256Base64Hashed(value) {
  if (!value) return false;
  const valueStr = makeString(value);
  const base64Regex = '^[A-Za-z0-9+/]{43}=?$';
  return valueStr.match(base64Regex) !== null;
}

function isSHA256HexHashed(value) {
  if (!value) return false;
  const valueStr = makeString(value);
  const hexRegex = '^[A-Fa-f0-9]{64}$';
  return valueStr.match(hexRegex) !== null;
}

function hashData(value) {
  if (!value) return value;

  const type = getType(value);

  if (value === 'undefined' || value === 'null') return undefined;

  if (type === 'array') {
    return value.map((val) => hashData(val));
  }

  if (type === 'object') {
    return Object.keys(value).reduce((acc, val) => {
      acc[val] = hashData(value[val]);
      return acc;
    }, {});
  }

  if (isSHA256HexHashed(value) || isSHA256Base64Hashed(value)) return value;

  return sha256Sync(makeString(value).trim().toLowerCase(), {
    outputEncoding: 'hex'
  });
}

function isValidValue(value) {
  const valueType = getType(value);
  return valueType !== 'null' && valueType !== 'undefined' && value !== '';
}

function isUIFieldTrue(field) {
  return [true, 'true'].indexOf(field) !== -1;
}

function isConsentGivenOrNotRequired() {
  if (data.adStorageConsent !== 'required') return true;
  if (eventData.consent_state) return !!eventData.consent_state.ad_storage;
  const xGaGcs = eventData['x-ga-gcs'] || ''; // x-ga-gcs is a string like "G110"
  return xGaGcs[2] === '1';
}

function log(rawDataToLog) {
  const logDestinationsHandlers = {};
  if (determinateIsLoggingEnabled()) logDestinationsHandlers.console = logConsole;
  if (determinateIsLoggingEnabledForBigQuery()) logDestinationsHandlers.bigQuery = logToBigQuery;

  const keyMappings = {
    // No transformation for Console is needed.
    bigQuery: {
      Name: 'tag_name',
      Type: 'type',
      TraceId: 'trace_id',
      EventName: 'event_name',
      RequestMethod: 'request_method',
      RequestUrl: 'request_url',
      RequestBody: 'request_body',
      ResponseStatusCode: 'response_status_code',
      ResponseHeaders: 'response_headers',
      ResponseBody: 'response_body'
    }
  };

  for (const logDestination in logDestinationsHandlers) {
    const handler = logDestinationsHandlers[logDestination];
    if (!handler) continue;

    const mapping = keyMappings[logDestination];
    const dataToLog = mapping ? {} : rawDataToLog;

    if (mapping) {
      for (const key in rawDataToLog) {
        const mappedKey = mapping[key] || key;
        dataToLog[mappedKey] = rawDataToLog[key];
      }
    }

    handler(dataToLog);
  }
}

function logConsole(dataToLog) {
  logToConsole(JSON.stringify(dataToLog));
}

function logToBigQuery(dataToLog) {
  const connectionInfo = {
    projectId: data.logBigQueryProjectId,
    datasetId: data.logBigQueryDatasetId,
    tableId: data.logBigQueryTableId
  };

  dataToLog.timestamp = getTimestampMillis();

  ['request_body', 'response_headers', 'response_body'].forEach((p) => {
    dataToLog[p] = JSON.stringify(dataToLog[p]);
  });

  const bigquery =
    getType(BigQuery) === 'function' ? BigQuery() /* Only during Unit Tests */ : BigQuery;
  bigquery.insert(connectionInfo, [dataToLog], { ignoreUnknownValues: true });
}

function determinateIsLoggingEnabled() {
  const containerVersion = getContainerVersion();
  const isDebug = !!(
    containerVersion &&
    (containerVersion.debugMode || containerVersion.previewMode)
  );

  if (!data.logType) {
    return isDebug;
  }

  if (data.logType === 'no') {
    return false;
  }

  if (data.logType === 'debug') {
    return isDebug;
  }

  return data.logType === 'always';
}

function determinateIsLoggingEnabledForBigQuery() {
  if (data.bigQueryLogType === 'no') return false;
  return data.bigQueryLogType === 'always';
}
