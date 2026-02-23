const BigQuery = require('BigQuery');
const createRegex = require('createRegex');
const encodeUriComponent = require('encodeUriComponent');
const getAllEventData = require('getAllEventData');
const getContainerVersion = require('getContainerVersion');
const getGoogleAuth = require('getGoogleAuth');
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

const apiVersion = '1';
const eventData = getAllEventData();
const useOptimisticScenario = isUIFieldTrue(data.useOptimisticScenario);

if (shouldExitEarly(data, eventData)) {
  return data.gtmOnSuccess();
}

const mappedData = getDataForAudienceDataUpload(data, eventData);

const invalidFields = validateMappedData(mappedData);
if (invalidFields) {
  log({
    Name: 'GoogleCustomerMatch',
    Type: 'Message',
    EventName: data.audienceAction,
    Message: 'Request was not sent.',
    Reason: invalidFields
  });

  return data.gtmOnFailure();
}

sendRequest(data, mappedData, apiVersion);

if (useOptimisticScenario) {
  return data.gtmOnSuccess();
}

/*==============================================================================
  Vendor related functions
==============================================================================*/

function addDestinationsData(data, mappedData) {
  const normalizeIds = (id) => {
    return replaceAll(makeString(id), '[^0-9]', '');
  };

  const destinations = [];
  const accountsAndDestinationsFromUI =
    data.stapeAuthDestinationsList || data.ownAuthDestinationsList; // Mutually exclusive.;

  accountsAndDestinationsFromUI.forEach((row) => {
    const productDestinationId =
      data.authFlow === 'stape'
        ? 'stape_' + makeString(row.productDestinationId).trim() // Audience Name (not ID) is used here.
        : normalizeIds(row.productDestinationId);
    const destination = {
      reference: productDestinationId,
      productDestinationId: productDestinationId,
      operatingAccount: {
        accountType: row.product,
        accountId: normalizeIds(row.operatingAccountId)
      }
    };

    if (data.authFlow === 'stape' && row.linkedAccountId) {
      destination.linkedAccount = {
        accountType: row.product,
        accountId: normalizeIds(row.linkedAccountId)
      };
    }

    if (data.authFlow === 'own' && row.loginAccountId) {
      destination.loginAccount = {
        accountType: row.product,
        accountId: normalizeIds(row.loginAccountId)
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
    switch (makeString(data[consentType])) {
      case 'CONSENT_GRANTED':
      case 'true':
      case 'granted':
        consent[consentType] = 'CONSENT_GRANTED';
        break;
      case 'CONSENT_DENIED':
      case 'false':
      case 'denied':
        consent[consentType] = 'CONSENT_DENIED';
        break;
      case 'CONSENT_STATUS_UNSPECIFIED':
        consent[consentType] = 'CONSENT_STATUS_UNSPECIFIED';
      default:
        return;
    }
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

  const addressIsValid = [firstName, lastName, postalCode, regionCode].every(isValidValue);
  if (addressIsValid) {
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
  const audienceMembers = [];

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

    if (data.addUserIdData && data.userId) {
      audienceMembers.push({
        userIdData: {
          userId: makeString(data.userId)
        }
      });
    }

    // This is for the future. Not currently supported by UI.
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
  } else if (data.userMode === 'multiple' && getType(data.audienceMembers) === 'array') {
    data.audienceMembers.forEach((audienceMember) => {
      if (getType(audienceMember) !== 'object' || getType(audienceMember.userData) !== 'object')
        return;

      const audienceMemberUserDataOnly = {
        userData: audienceMember.userData
      };
      if (audienceMember.consent) audienceMemberUserDataOnly.consent = audienceMember.consent;
      if (
        getType(audienceMember.destinationReferences) === 'array' &&
        audienceMember.destinationReferences.length
      ) {
        audienceMemberUserDataOnly.destinationReferences = audienceMember.destinationReferences;
      }
      audienceMembers.push(audienceMemberUserDataOnly);
    });
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

function normalizeEmailAddress(email) {
  if (!email) return email;

  const emailParts = email.split('@');
  if (emailParts[1] === 'gmail.com' || emailParts[1] === 'googlemail.com') {
    return emailParts[0].split('.').join('') + '@' + emailParts[1];
  }
  return emailParts.join('@');
}

function normalizePhoneNumber(phoneNumber) {
  if (!phoneNumber) return phoneNumber;

  phoneNumber = phoneNumber
    .split(' ')
    .join('')
    .split('-')
    .join('')
    .split('(')
    .join('')
    .split(')')
    .join('');
  if (phoneNumber[0] !== '+') phoneNumber = '+' + phoneNumber;
  return phoneNumber;
}

function hashDataIfNeeded(mappedData) {
  const audienceMembers = mappedData.audienceMembers;

  if (getType(audienceMembers) !== 'array') return;

  audienceMembers.forEach((audienceMember) => {
    if (
      getType(audienceMember) !== 'object' ||
      getType(audienceMember.userData) !== 'object' ||
      getType(audienceMember.userData.userIdentifiers) !== 'array'
    ) {
      return;
    }

    audienceMember.userData.userIdentifiers.forEach((userIdentifier) => {
      const key = Object.keys(userIdentifier)[0];

      if (key === 'emailAddress' || key === 'phoneNumber') {
        let value = userIdentifier[key];

        if (!value) return;

        if (isSHA256HexHashed(value)) {
          mappedData.encoding = 'HEX';
          return;
        } else if (isSHA256Base64Hashed(value)) {
          mappedData.encoding = 'BASE64';
          return;
        }

        if (key === 'phoneNumber') value = normalizePhoneNumber(value);
        else if (key === 'emailAddress') value = normalizeEmailAddress(value);

        userIdentifier[key] = hashData(value);
        mappedData.encoding = 'HEX';
      } else if (key === 'address') {
        if (getType(userIdentifier.address) !== 'object') return;

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
  });

  return mappedData;
}

function generateRequestUrl(data, apiVersion) {
  const audienceActionNormalization = {
    ingest: 'ingest',
    remove: 'remove'
  };
  const action = audienceActionNormalization[data.audienceAction];

  if (data.authFlow === 'own') {
    return 'https://datamanager.googleapis.com/v' + apiVersion + '/audienceMembers:' + action;
  }

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

function generateRequestOptions(data, apiVersion) {
  const options = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    }
  };

  if (data.authFlow === 'own') {
    const auth = getGoogleAuth({
      scopes: ['https://www.googleapis.com/auth/datamanager']
    });
    options.authorization = auth;
    if (data.xGoogUserProject) options.headers['x-goog-user-project'] = data.xGoogUserProject;
  } else if (data.authFlow === 'stape') {
    options.headers['x-datamanager-api-version'] = apiVersion;
    options.timeout = 20000;
  }

  return options;
}

function validateMappedData(mappedData) {
  const audienceMembers = mappedData.audienceMembers;
  if (!audienceMembers || audienceMembers.length === 0) {
    return 'At least 1 Audience Member resource must be specified.';
  }

  const audienceMembersLengthLimit = 10000;
  if (audienceMembers.length > audienceMembersLengthLimit) {
    return (
      'Audience Members list length must be at most ' +
      audienceMembersLengthLimit +
      '. Current is: ' +
      audienceMembers.length
    );
  }

  const hasUserDataOrPairData = audienceMembers.some((am) => am.userData || am.pairData);
  if (hasUserDataOrPairData && !mappedData.encoding) {
    return 'Encoding must be specified when sending UserData or PairData.';
  }

  const isUserDataAbsent = (audienceMember) => {
    return (
      getType(audienceMember.userData) !== 'object' ||
      getType(audienceMember.userData.userIdentifiers) !== 'array' ||
      audienceMember.userData.userIdentifiers.length === 0 ||
      audienceMember.userData.userIdentifiers.some((i) => {
        const userIdentifierIsObject = getType(i) === 'object';
        const userIdentifierKey = userIdentifierIsObject ? Object.keys(i)[0] : undefined;
        const userIdentifierValue = userIdentifierIsObject ? Object.values(i)[0] : undefined;
        return (
          !hasProps(i) ||
          !userIdentifierValue ||
          (userIdentifierKey === 'address' &&
            (!hasProps(userIdentifierValue) || Object.values(userIdentifierValue).some((v) => !v)))
        );
      })
    );
  };
  const isUserIdDataAbsent = (audienceMember) => {
    return (
      getType(audienceMember.userIdData) !== 'object' ||
      getType(audienceMember.userIdData.userId) !== 'string' ||
      !audienceMember.userIdData.userId
    );
  };
  // This is for the future. Not currently supported by UI.
  const isMobileDataAbsent = (audienceMember) => {
    return (
      getType(audienceMember.mobileData) !== 'object' ||
      getType(audienceMember.mobileData.mobileIds) !== 'array' ||
      audienceMember.mobileData.mobileIds.length === 0 ||
      audienceMember.mobileData.mobileIds.some(
        (mobileId) => getType(mobileId) !== 'string' || !mobileId
      )
    );
  };
  const doesNotHaveMatchData = audienceMembers.some((audienceMember) => {
    return (
      isUserDataAbsent(audienceMember) &&
      isUserIdDataAbsent(audienceMember) &&
      isMobileDataAbsent(audienceMember)
    );
  });
  if (doesNotHaveMatchData) {
    return 'At least 1 User Data must be specified.';
  }

  const destinations = mappedData.destinations;
  const destinationsLengthLimit = 10;
  if (destinations.length > destinationsLengthLimit) {
    return 'Destinations list length must be at most ' + destinationsLengthLimit + '.';
  }

  const validationKeys = [
    'productDestinationId',
    'reference',
    'operatingAccount.accountId',
    'linkedAccount.accountId',
    'loginAccount.accountId'
  ];
  for (let i = 0; i < destinations.length; i++) {
    const destination = destinations[i];
    for (let j = 0; j < validationKeys.length; j++) {
      const key = validationKeys[j];
      const parts = key.split('.');
      if (parts.length > 1 && !destination[parts[0]]) continue;
      let value = parts.reduce((acc, part) => acc && acc[part], destination);
      if (data.authFlow === 'stape' && ['productDestinationId', 'reference'].indexOf(key) !== -1) {
        value = replaceAll(value, 'stape_', '');
      }
      if (!isValidValue(value) || ['undefined', 'null'].indexOf(value) !== -1) {
        return 'destinations[' + i + '].' + key + ' is invalid.';
      }
    }
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

function sendRequest(data, mappedData, apiVersion) {
  const requestUrl = generateRequestUrl(data, apiVersion);
  const requestOptions = generateRequestOptions(data, apiVersion);
  const requestBody = mappedData;

  log({
    Name: 'GoogleCustomerMatch',
    Type: 'Request',
    EventName: data.audienceAction,
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
        EventName: data.audienceAction,
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
        EventName: data.audienceAction,
        Message: 'Request failed or timed out.',
        Reason: JSON.stringify(result)
      });

      if (!useOptimisticScenario) data.gtmOnFailure();
    });
}

/*==============================================================================
  Helpers
==============================================================================*/

function shouldExitEarly(data, eventData) {
  if (!isConsentGivenOrNotRequired(data, eventData)) return true;

  const url = getUrl(data);
  if (url && url.lastIndexOf('https://gtm-msr.appspot.com/', 0) === 0) return true;

  return false;
}

function getUrl(eventData) {
  return eventData.page_location || eventData.page_referrer || getRequestHeader('referer');
}

function enc(data) {
  if (['null', 'undefined'].indexOf(getType(data)) !== -1) data = '';
  return encodeUriComponent(makeString(data));
}

function hasProps(obj) {
  return getType(obj) === 'object' && Object.keys(obj).length > 0;
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
  return valueType !== 'null' && valueType !== 'undefined' && value !== '' && value === value;
}

function replaceAll(str, find, replace) {
  if (getType(str) !== 'string') return str;
  const regex = createRegex(find, 'g');
  return str.replace(regex, replace);
}

function isUIFieldTrue(field) {
  return [true, 'true'].indexOf(field) !== -1;
}

function isConsentGivenOrNotRequired(data, eventData) {
  if (data.adStorageConsent !== 'required') return true;
  if (eventData.consent_state) return !!eventData.consent_state.ad_storage;
  const xGaGcs = eventData['x-ga-gcs'] || ''; // x-ga-gcs is a string like "G110"
  return xGaGcs[2] === '1';
}

function log(rawDataToLog) {
  const logDestinationsHandlers = {};
  if (determinateIsLoggingEnabled()) logDestinationsHandlers.console = logConsole;
  if (determinateIsLoggingEnabledForBigQuery()) logDestinationsHandlers.bigQuery = logToBigQuery;

  rawDataToLog.TraceId = getRequestHeader('trace-id');

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

  BigQuery.insert(connectionInfo, [dataToLog], { ignoreUnknownValues: true });
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
