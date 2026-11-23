___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Google Data Manager API Customer Match",
  "categories": [
    "ADVERTISING",
    "MARKETING",
    "REMARKETING"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "stape.io",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAE00lEQVR4Ae2dT0hVQRTGz3saVJBEBVkYtGhly/4o2CIIBCNokVFRK8MIgjBsrdk6UYRADF0ZKLooEAVpmWBGLV1Im9BSEiSNCjIxv1vzuNnzOffOzJtm5vxAfNR9d3F+935z5lx9Zj6dO7VOjDWyxFiFBViGBViGBViGBViGBViGBViGBViGBVimVPbAve3dVFJ+iJjtWVuYp8/Nt6WOlRaQLS+n7EEWIMN6guEOR5BlpO8A35mcnKSh4aHoOygrK6OKigqqra2ly/WXyRTBC5ibm6Pm+825wseZnp6m8fFx6uzspMGBwUiIboKOIBT/ytUreYu/+bi683WREN0ELQDFR3EF9fX10ZU+8XKCxkbH6GbDzdz/raysUOOtxui7ToIVMDw8/FfxUfj2R+1UXV0dRU1lZSW1tLREMkT04Pjevl7SSbACOjo7cq9bW1qjwucDxYcYQV9fn9a7IEgBuJLF1Y9up6GhoeDxkHOk4kj0GsXXuRYEK0CAqJGhqroq93p2bpZ0wRsxSXCnCDiCFIkXM343FCIeOyKOdBCkAMSOkAABMvuA+DGysSVDsBGEnl+AnXChWGl72JZ7LdpUXQQrAJus+F2Ane7mOBI7ZYwjBGhZdRLsLAhX8b2me7mrG8WuOVOTi6d87SaO1xk/IOhhnOj/4xGzVY+P4jc1NZFugm9DIQHjhq1Gzsh8jClMFB9kZH84d9/TZ1Ry8DD5zubnAfGWVRY8kly6cVHqWH4gs4mtZkKmKM3u/UEhEp8HJQF3hMxCvLiznGTIrL7YIRVBJTUzlNl5lFwGBcdjR9WJJiTgUSUW5nx7goXldbr++JvUuYJZhDHHR6+Px4uqsxy8H88T0LbGx9ppCGINQJFQ+DhpF1m0qXGB4ry4G9KgJuDuKfpvuNtNdOzEP/+M2IkXH/ld6AGMDJCAvYPomHD+45XHo1hKivcRhGKJnEbx0dOrdjriPGLvoDIb8j6CcFXiC1dr2r5+K/DMWJw/LcHsA0z096IbUoGfiFmGBVjGDwH7DuXtgFzADwFoQR3FfQFnr27cAe5Oad0WgOipu0Uu47YAFH/XHnIZdwVUXfj95ThuCoiip5F8wE0BiB6HF944agJsFMGT6BGoCXjwnOh6a/FEYMH1JHoE6hGEq7FYIlB8T6JHoG8NMC0CC+/Za+Qb+hdhUyIcHjcUwlwXpFOEh9EjMN+GqorwYNxQiOLtAyAiTQfjafQIiidgaZ5o7Emit7g+6ZSheAJGezYkfJQ/3vPoERRHwKsRoqmRZO/xYNIpg3kBaaLHs3FDIUrvLNdIHdi6tptSpXHS6AG4Y/Ajw+f9bT8FpW9X95Mx3r1JHj2CqT+xdfqC1yLMRlD/Q1IGEh5c3DhXW/I7yQHMCUDu6yyYpyLMCIgW3h4ygmcizAjokvvMTCU8EaFfgO7o2Q4h4sMMuYheASajZzu+fyEX0Sugv42YZOgTgM0T+n4mEXoEpBk3MBF6BKQZNzAR6gLSTDqZHGoCOHqUURPA0aOMmgCOHmX4l/QswwIswwIswwIswwIso/ZZEV2viVGD7wDLsADLSEfQ/NdF8pHszwOkG3xonyyZkwOXEvzhPf/Y876dMgYkyMIRZBkWYBkWYBkWYBkWYBkWYBkWYBkWYBkWYJlfjFqzFoOAt6UAAAAASUVORK5CYII\u003d"
  },
  "description": "Use this tag to upload your Customer Match lists and send audience data to Google\u0027s advertising products (Google Ads and Display \u0026 Video 360) through the Data Manager API.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "audienceAction",
    "displayName": "Action",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "ingest",
        "displayValue": "Add to Customer List"
      },
      {
        "value": "remove",
        "displayValue": "Remove from Customer List"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "RADIO",
    "name": "authFlow",
    "displayName": "Authentication Type",
    "radioItems": [
      {
        "value": "stape",
        "displayValue": "Stape Google Connection",
        "help": "You can enable it on the Stape container settings, in the \u003ca href\u003d\"https://app.stape.io/container/\" target\u003d\"_blank\"\u003eConnections\u003c/a\u003e section.\n\u003c/br\u003e\u003c/br\u003e\nLearn more: \u003ca href\u003d\"https://stape.io/solutions/data-manager-api-connection\" target\u003d\"_blank\"\u003e[1]\u003c/a\u003e and \u003ca href\u003d\"https://stape.io/blog/customer-list-google-ads\" target\u003d\"_blank\"\u003e[2]\u003c/a\u003e",
        "subParams": []
      },
      {
        "value": "own",
        "displayValue": "Own Google Credentials",
        "help": "This type of auth is more complicated. Only choose it if you know what you are doing and do not want to use the Stape Google Connection authentication.\n\u003cbr/\u003e\u003cbr/\u003e\nIt uses the \u003ca href\u003d\"https://cloud.google.com/docs/authentication/application-default-credentials\"\u003eGCP Application Default Credentials\u003c/a\u003e to automatically find credentials from the server environment.\n\u003cbr/\u003e\u003cbr/\u003e\nIt\u0027s performed through a \u003ca href\u003d\"https://developers.google.com/data-manager/api/devguides/quickstart/set-up-access?credential_type\u003dservice_account\"\u003eService Account impersonation\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003ca href\u003d\"https://github.com/stape-io/google-customer-match-tag?tab\u003dreadme-ov-file#how-to-use-the-google-customer-match-tag\"\u003eLearn more and how-to\u003c/a\u003e."
      }
    ],
    "simpleValueType": true,
    "defaultValue": "stape"
  },
  {
    "type": "GROUP",
    "name": "destinationsGroup",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "stapeAuthDestinationsList",
        "displayName": "Destination Accounts and Customer Lists",
        "simpleTableColumns": [
          {
            "defaultValue": "GOOGLE_ADS",
            "displayName": "Product",
            "name": "product",
            "type": "SELECT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "selectItems": [
              {
                "value": "GOOGLE_ADS",
                "displayValue": "Google Ads"
              },
              {
                "value": "DISPLAY_VIDEO_ADVERTISER",
                "displayValue": "Display \u0026 Video 360 Advertiser"
              },
              {
                "value": "DISPLAY_VIDEO_PARTNER",
                "displayValue": "Display \u0026 Video 360 Partner"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Operating Customer ID",
            "name": "operatingAccountId",
            "type": "TEXT",
            "valueHint": "1234567890",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Customer ID",
            "name": "linkedAccountId",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "valueHint": "1234567890"
          },
          {
            "defaultValue": "",
            "displayName": "Customer List Name",
            "name": "productDestinationId",
            "type": "TEXT",
            "valueHint": "Purchasers",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "authFlow",
            "paramValue": "stape",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "TABLE_ROW_COUNT",
            "args": [
              1,
              10
            ]
          }
        ],
        "newRowButtonText": "Add Customer List",
        "help": "\u003cb\u003eProduct\u003c/b\u003e: The Product the Customer List belongs to. Learn more about DV360 \u003ca href\u003d\"https://support.google.com/displayvideo/answer/2696883?hl\u003den\"\u003eAdvertiser\u003c/a\u003e and \u003ca href\u003d\"https://support.google.com/displayvideo/answer/7622449?hl\u003den\"\u003ePartner\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eOperating Customer ID\u003c/b\u003e: The \u003ci\u003eAccount ID\u003c/i\u003e (without hyphens) of the account (Google Ads account, DV360 account etc.) that will receive customer list data. \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/Destination\"\u003eLearn more\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eCustomer ID\u003c/b\u003e: The \u003ci\u003eAccount ID\u003c/i\u003e (without hyphens) of the account for which the link between the Data Partner account (Stape) and the Advertiser account was established.\n\u003cbr/\u003e\ne.g. the link between the Data Partner account (Stape) and Advertiser account can be done at MCC level, but the data is going to be sent to a subaccount of the MCC.\n\u003cbr/\u003e\nIn this case: the \u003ci\u003eCustomer Account\u003c/i\u003e is the MCC, and \u003ci\u003eOperating Customer Account\u003c/i\u003e is the subaccount.\n\u003cbr/\u003e\nIf the link is done with the same account that will receive the data, then the \u003ci\u003eCustomer Account\u003c/i\u003e and \u003ci\u003eOperating Customer Account\u003c/i\u003e are the same.\n\u003cbr/\u003e\n\u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/Destination\"\u003eLearn more\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eCustomer List Name\u003c/b\u003e: The name of the customer list you want to interact with.\n\u003cbr/\u003e\nOnly customer lists created through the Stape connection are supported. You cannot interact with arbitrary customer lists.\n\u003cbr/\u003e\nWhen using Google products, the audience will appear with the name format: \u003ci\u003estape_\u0026lt;Customer List Name\u0026gt;\u003c/i\u003e. This customer list is created automatically by Stape during the integration process.\n\u003cbr/\u003e\nFor example, if you enter \"Purchasers\" in this field, the tag will interact with the customer list named \u003ci\u003estape_Purchasers\u003c/i\u003e in your Google product."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ownAuthDestinationsList",
        "displayName": "Destination Accounts and Customer Lists",
        "simpleTableColumns": [
          {
            "defaultValue": "GOOGLE_ADS",
            "displayName": "Product",
            "name": "product",
            "type": "SELECT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "selectItems": [
              {
                "value": "GOOGLE_ADS",
                "displayValue": "Google Ads"
              },
              {
                "value": "DISPLAY_VIDEO_ADVERTISER",
                "displayValue": "Display \u0026 Video 360 Advertiser"
              },
              {
                "value": "DISPLAY_VIDEO_PARTNER",
                "displayValue": "Display \u0026 Video 360 Partner"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Operating Customer ID",
            "name": "operatingAccountId",
            "type": "TEXT",
            "valueHint": "1234567890",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Customer ID",
            "name": "loginAccountId",
            "type": "TEXT",
            "valueHint": "1234567890",
            "valueValidators": []
          },
          {
            "defaultValue": "",
            "displayName": "Customer List ID",
            "name": "productDestinationId",
            "type": "TEXT",
            "valueHint": "1234567890",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "authFlow",
            "paramValue": "own",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "TABLE_ROW_COUNT",
            "args": [
              1,
              10
            ]
          }
        ],
        "newRowButtonText": "Add Customer List",
        "help": "\u003cb\u003eProduct\u003c/b\u003e: The Product the Customer List belongs to. Learn more about DV360 \u003ca href\u003d\"https://support.google.com/displayvideo/answer/2696883?hl\u003den\"\u003eAdvertiser\u003c/a\u003e and \u003ca href\u003d\"https://support.google.com/displayvideo/answer/7622449?hl\u003den\"\u003ePartner\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eOperating Customer ID\u003c/b\u003e: The \u003ci\u003eAccount ID\u003c/i\u003e (without hyphens) of the account (Google Ads account, DV360 account etc.) that will receive customer list data. \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/Destination\"\u003eLearn more\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eCustomer ID\u003c/b\u003e: The \u003ci\u003eAccount ID\u003c/i\u003e of the account (Google Ads account, DV360 account etc.) used for authorization (without hyphens) when making the API request.\n\u003cbr/\u003e\nIf your credentials are for access to a \u003ci\u003eManager Account\u003c/i\u003e that has the \u003ci\u003eOperating Account\u003c/i\u003e as one of its subaccounts, set the \u003ci\u003eCustomer ID\u003c/i\u003e to the ID of the \u003ci\u003eManager Account\u003c/i\u003e.\n\u003cbr/\u003e\nIf your credentials are for the account that is the \u003ci\u003eOperating Account\u003c/i\u003e, you don\u0027t need to set \u003ci\u003eCustomer ID\u003c/i\u003e.\n\u003cbr/\u003e\nLearn more: \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/Destination\"\u003e[1]\u003c/a\u003e and \u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/quickstart/send-events?persona\u003dadvertiser#prepare_a_destination\"\u003e[2]\u003c/a\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eCustomer List ID\u003c/b\u003e: The ID of the customer list you want to interact with."
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "termsOfServiceStatus",
    "displayName": "Terms of Service Status",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "ACCEPTED",
        "displayValue": "ACCEPTED"
      },
      {
        "value": "REJECTED",
        "displayValue": "REJECTED"
      }
    ],
    "simpleValueType": true,
    "notSetText": "(not set)",
    "help": "\u003ca href\u003d\"https://support.google.com/adspolicy/answer/6299717\"\u003eThe Customer Match terms of service\u003c/a\u003e.\n\u003cbr/\u003e\nThis must be accepted for all uploads to Customer Match user lists.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "audienceAction",
        "paramValue": "ingest",
        "type": "EQUALS"
      }
    ],
    "defaultValue": "ACCEPTED"
  },
  {
    "type": "SELECT",
    "name": "validateOnly",
    "displayName": "Validate Only",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": true,
        "displayValue": "true"
      },
      {
        "value": false,
        "displayValue": "false"
      }
    ],
    "simpleValueType": true,
    "help": "If \u003cb\u003etrue\u003c/b\u003e, the request is validated but not executed. Only errors are returned, not results.\u003cbr /\u003e \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/audienceMembers/ingest#request-body\"\u003eLearn more\u003c/a\u003e.",
    "defaultValue": false
  },
  {
    "type": "SELECT",
    "name": "useOptimisticScenario",
    "displayName": "Use Optimistic Scenario",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": true,
        "displayValue": "true"
      },
      {
        "value": false,
        "displayValue": "false"
      }
    ],
    "simpleValueType": true,
    "help": "The tag will call gtmOnSuccess() without waiting for a response from the API. This will speed up sGTM response time however your tag will always return the status fired successfully even in case it is not.",
    "defaultValue": false
  },
  {
    "type": "GROUP",
    "name": "requestLevelConsentGroup",
    "displayName": "Request-level Consent",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "LABEL",
        "name": "requestLevelConsentGroupLabel",
        "displayName": "Request-level consent to apply to all users in the request.\n\u003cbr/\u003e\nUser-level consent overrides request-level consent, and can be specified for each audience member when sending data to \u003ci\u003eMultiple Users\u003c/i\u003e in the \u003cb\u003eAudience Members\u003c/b\u003e section."
      },
      {
        "type": "SELECT",
        "name": "adUserData",
        "displayName": "Consent for Ad User Data",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "CONSENT_GRANTED",
            "displayValue": "CONSENT_GRANTED"
          },
          {
            "value": "CONSENT_DENIED",
            "displayValue": "CONSENT_DENIED"
          },
          {
            "value": "CONSENT_STATUS_UNSPECIFIED",
            "displayValue": "CONSENT_STATUS_UNSPECIFIED"
          }
        ],
        "simpleValueType": true,
        "help": "This represents consent to Ad User Data.\n\u003cbr/\u003e\nWhen passing the value using a variable, make sure to return the exact strings as defined in the drop-down: \u003ci\u003eCONSENT_GRANTED\u003c/i\u003e, \u003ci\u003eCONSENT_DENIED\u003c/i\u003e and \u003ci\u003eCONSENT_STATUS_UNSPECIFIED\u003c/i\u003e.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "adPersonalization",
        "displayName": "Consent for Ad Personalization",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "CONSENT_GRANTED",
            "displayValue": "CONSENT_GRANTED"
          },
          {
            "value": "CONSENT_DENIED",
            "displayValue": "CONSENT_DENIED"
          },
          {
            "value": "CONSENT_STATUS_UNSPECIFIED",
            "displayValue": "CONSENT_STATUS_UNSPECIFIED"
          }
        ],
        "simpleValueType": true,
        "help": "This represents consent to Ad Personalization.\n\u003cbr/\u003e\nWhen passing the value using a variable, make sure to return the exact strings as defined in the drop-down: \u003ci\u003eCONSENT_GRANTED\u003c/i\u003e, \u003ci\u003eCONSENT_DENIED\u003c/i\u003e and \u003ci\u003eCONSENT_STATUS_UNSPECIFIED\u003c/i\u003e.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "audienceAction",
        "paramValue": "ingest",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "audienceMembersGroup",
    "displayName": "Audience Members",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "audienceType",
        "displayName": "Audience Type",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "CONTACT_ID",
            "displayValue": "Contact information"
          },
          {
            "value": "MOBILE_ID",
            "displayValue": "Mobile ID"
          },
          {
            "value": "USER_ID",
            "displayValue": "User ID"
          }
        ],
        "simpleValueType": true,
        "help": "The type of identifier the Customer List accepts. It must match the \u003ci\u003eupload key type\u003c/i\u003e chosen when the Customer List was \u003ca href\u003d\"https://developers.google.com/data-manager/api/devguides/audiences/google-ads/customer-match/create-audience\"\u003ecreated\u003c/a\u003e: \u003ci\u003eCONTACT_ID\u003c/i\u003e (Contact information), \u003ci\u003eMOBILE_ID\u003c/i\u003e (Mobile ID) or \u003ci\u003eUSER_ID\u003c/i\u003e (User ID).\n\u003cbr/\u003e\u003cbr/\u003e\nA request, and every Customer List in it, can only receive \u003cb\u003eone\u003c/b\u003e type of identifier. If the type doesn\u0027t match the Customer List, the API rejects the request.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cul\u003e\n\u003cli\u003e\u003cb\u003eContact information\u003c/b\u003e: email addresses, phone numbers, addresses and IP addresses. Supported by Google Ads and Display \u0026 Video 360.\u003c/li\u003e\n\u003cli\u003e\u003cb\u003eMobile ID\u003c/b\u003e: Android Advertising IDs (AAID) or iOS IDFAs. Supported by Google Ads and Display \u0026 Video 360.\u003c/li\u003e\n\u003cli\u003e\u003cb\u003eUser ID\u003c/b\u003e: your own unique identifier for the user. Supported by Google Ads only.\u003c/li\u003e\n\u003c/ul\u003e\nOnly \u003cb\u003eOwn Google Credentials\u003c/b\u003e supports Mobile ID and User ID. Customer Lists created via the Stape Google Connection accept Contact information only.",
        "defaultValue": "CONTACT_ID",
        "enablingConditions": [
          {
            "paramName": "authFlow",
            "paramValue": "own",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "audienceDataEncoding",
        "displayName": "Audience Data Encoding",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "HEX",
            "displayValue": "HEX"
          },
          {
            "value": "BASE64",
            "displayValue": "BASE64"
          }
        ],
        "simpleValueType": true,
        "help": "The encoding type of the user identifiers SHA256 hash: \u003ci\u003eHEX\u003c/i\u003e or \u003ci\u003eBASE64\u003c/i\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eRequired\u003c/b\u003e for \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/UserData\"\u003e\u003ci\u003eUserData\u003c/i\u003e\u003c/a\u003e (User Email Address, User Phone Number and User Given/Family Name) uploads.\n\u003cbr/\u003e\nFor other types (User Address Region and User Address Postal Code) uploads, this field is \u003cb\u003eignored\u003c/b\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\nFor hashed user identifiers, this is the encoding type of the hashed string.\n\u003cbr/\u003e\nFor encrypted hashed user identifiers, this is the encoding type of the outer encrypted string, but not necessarily the inner hashed string, meaning the inner hashed string could be encoded in a different way than the outer encrypted string.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eDefault\u003c/b\u003e: \u003ci\u003eHEX\u003c/i\u003e - when passing a non-hashed value to \u003ci\u003eUserData\u003c/i\u003e (User Email Address, User Phone Number and User Given/Family Name) fields; or when using default values from GA4 Event Data.",
        "notSetText": "(not set)",
        "enablingConditions": [
          {
            "paramName": "authFlow",
            "paramValue": "stape",
            "type": "EQUALS"
          },
          {
            "paramName": "audienceType",
            "paramValue": "CONTACT_ID",
            "type": "EQUALS"
          },
          {
            "paramName": "audienceType",
            "paramValue": "",
            "type": "NOT_PRESENT"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "enableAudienceDataEncryption",
        "displayName": "Audience Data Encryption",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": false,
            "displayValue": "false"
          },
          {
            "value": true,
            "displayValue": "true"
          }
        ],
        "simpleValueType": true,
        "help": "Encryption information for \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/UserData\"\u003e\u003ci\u003eUserData\u003c/i\u003e\u003c/a\u003e (User Email Address, User Phone Number and User Given/Family Name) uploads.\n\u003cbr/\u003e\u003cbr/\u003e\nIf not set, it\u0027s assumed that uploaded identifying information is hashed but not encrypted.\n\u003cbr/\u003e\u003cbr/\u003e \nFor other types (User Address Region and User Address Postal Code) uploads, this field is \u003cb\u003eignored\u003c/b\u003e.\n\u003cbr/\u003e\u003cbr/\u003e\nReferences:  \n\u003cul\u003e \n\u003cli\u003e\u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/encryption\"\u003eData Manager API: Getting started with Encryption\u003c/a\u003e\u003c/li\u003e \u003cli\u003e\u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/EncryptionInfo\"\u003eEncryptionInfo object\u003c/a\u003e\u003c/li\u003e \u003c/ul\u003e",
        "defaultValue": false,
        "subParams": [
          {
            "type": "GROUP",
            "name": "audienceDataEncryptionInfoGroup",
            "displayName": "Encryption Info (Google Cloud Platform wrapped key information)",
            "groupStyle": "ZIPPY_OPEN_ON_PARAM",
            "subParams": [
              {
                "type": "SELECT",
                "name": "gcpWrappedKeyType",
                "displayName": "Key Type",
                "macrosInSelect": false,
                "selectItems": [
                  {
                    "value": "XCHACHA20_POLY1305",
                    "displayValue": "XCHACHA20_POLY1305"
                  }
                ],
                "simpleValueType": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ],
                "help": "The type of algorithm used to encrypt the data."
              },
              {
                "type": "TEXT",
                "name": "gcpWrappedKeyWipProvider",
                "displayName": "Workload Identity pool provider",
                "simpleValueType": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ],
                "help": "The \u003ca href\u003d\"https://cloud.google.com/iam/docs/workload-identity-federation\"\u003eWorkload Identity\u003c/a\u003e pool provider required to use KEK."
              },
              {
                "type": "TEXT",
                "name": "gcpWrappedKeyKekUri",
                "displayName": "Google Cloud Platform Cloud Key Management Service resource ID",
                "simpleValueType": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ],
                "help": "The Google Cloud Platform \u003ca href\u003d\"https://cloud.google.com/kms/docs/getting-resource-ids\"\u003eCloud Key Management Service resource ID\u003c/a\u003e."
              },
              {
                "type": "TEXT",
                "name": "gcpWrappedKeyEncryptedDek",
                "displayName": "Encrypted data encryption key",
                "simpleValueType": true,
                "help": "The base64 encoded encrypted data encryption key.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "enableAudienceDataEncryption",
                "paramValue": false,
                "type": "NOT_EQUALS"
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "authFlow",
            "paramValue": "stape",
            "type": "EQUALS"
          },
          {
            "paramName": "audienceType",
            "paramValue": "CONTACT_ID",
            "type": "EQUALS"
          },
          {
            "paramName": "audienceType",
            "paramValue": "",
            "type": "NOT_PRESENT"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "userMode",
        "displayName": "User Mode",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "single",
            "displayValue": "Single User (Recommended)"
          },
          {
            "value": "multiple",
            "displayValue": "Multiple Users"
          }
        ],
        "simpleValueType": true,
        "help": "Send data for a single user or for multiple users.",
        "defaultValue": "single"
      },
      {
        "type": "GROUP",
        "name": "audienceMembersSingleUserGroup",
        "subParams": [
          {
            "type": "GROUP",
            "name": "contactIdGroup",
            "subParams": [
              {
                "type": "GROUP",
                "name": "userDataGroup",
                "displayName": "User Data Identifiers",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "LABEL",
                    "name": "userDataGroupLabel",
                    "displayName": "When sending User Data Identifiers, \u003cb\u003eat least one\u003c/b\u003e of User Email Address(es), User Phone Number(s) or User Address must be specified.\n\u003cbr/\u003e\nThe total number of User Data identifiers must not exceed 10 items."
                  },
                  {
                    "type": "CHECKBOX",
                    "name": "autoMapUserData",
                    "checkboxText": "Auto-map User Data",
                    "simpleValueType": true,
                    "help": "If enabled, the tag will attempt to automatically map parameters from the Event Data.\n\u003cbr/\u003e\u003cbr/\u003e\nAny value you manually enter in a field below will always override the auto-mapped value.\n\u003cbr/\u003e\u003cbr/\u003e\nDefault mappings:\n\u003cul\u003e\n\u003cli\u003eUser Email Address(es):\n\u003cul\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.email\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.email_address\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.sha256_email\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.sha256_email_address\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e\n\u003cli\u003eUser Phone Number(s):\n\u003cul\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.phone\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.phone_number\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.sha256_phone_number\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e\n\u003cli\u003eUser Given Name:\n\u003cul\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.address.first_name\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.address.sha256_first_name\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e\n\u003cli\u003eUser Family Name:\n\u003cul\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.address.last_name\u003c/i\u003e\u003c/li\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.address.sha256_last_name\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e\n\u003cli\u003eUser Address Region:\n\u003cul\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.address.country\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e\n\u003cli\u003eUser Address Postal Code:\n\u003cul\u003e\n\u003cli\u003e\u003ci\u003eeventData.user_data.address.postal_code\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e\n\u003c/ul\u003e",
                    "defaultValue": true
                  },
                  {
                    "type": "TEXT",
                    "name": "userDataEmailAddresses",
                    "displayName": "User Email Address(es)",
                    "simpleValueType": true,
                    "help": "Specify a single email address, or an array of email addresses. Each item can be already SHA256 hashed or not. They can be already encrypted as well.\n\u003cbr/\u003e\u003cbr/\u003e\nIf already SHA256 hashed, make sure to follow these \u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/formatting#userdata_format\"\u003enormalization guidelines\u003c/a\u003e before applying the hash, and also to \u003cb\u003especify the hash encoding in the corresponding template field\u003c/b\u003e.",
                    "valueHint": "jane@example.com"
                  },
                  {
                    "type": "TEXT",
                    "name": "userDataPhoneNumbers",
                    "displayName": "User Phone Number(s)",
                    "simpleValueType": true,
                    "help": "Specify a single phone number, or an array of phone numbers. Each item can be already SHA256 hashed or not. They can be already encrypted as well.\n\u003cbr/\u003e\u003cbr/\u003e\nUse \u003ca href\u003d\"https://en.wikipedia.org/wiki/E.164\"\u003eE.164 format\u003c/a\u003e. Include the plus sign (+) and the country code.\n\u003cbr/\u003e\nIf already SHA256 hashed, make sure to follow these \u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/formatting#userdata_format\"\u003enormalization guidelines\u003c/a\u003e before applying the hash, and also to \u003cb\u003especify the hash encoding in the corresponding template field\u003c/b\u003e.",
                    "valueHint": "+1555999999999"
                  },
                  {
                    "type": "CHECKBOX",
                    "name": "addUserDataAddress",
                    "checkboxText": "Add User Address data",
                    "simpleValueType": true,
                    "subParams": [
                      {
                        "type": "GROUP",
                        "name": "userDataAddressGroup",
                        "subParams": [
                          {
                            "type": "LABEL",
                            "name": "userDataAddressLabel",
                            "displayName": "You must specify \u003cb\u003eall\u003c/b\u003e the fields below (User Given Name, User Family Name, User Address Region and User Address Postal Code)."
                          },
                          {
                            "type": "TEXT",
                            "name": "addressGivenName",
                            "displayName": "User Given Name",
                            "simpleValueType": true,
                            "help": "Specify the User Given Name (First Name). Don\u0027t include prefixes such as \u003ci\u003eMrs.\u003c/i\u003e. It can be already SHA256 hashed or not. It can be encrypted as well.\n\u003cbr/\u003e\u003cbr/\u003e\nIf already SHA256 hashed, make sure to follow these \u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/formatting#userdata_format\"\u003enormalization guidelines\u003c/a\u003e before applying the hash, and also to \u003cb\u003especify the hash encoding in the corresponding template field\u003c/b\u003e.",
                            "valueHint": "john",
                            "valueValidators": []
                          },
                          {
                            "type": "TEXT",
                            "name": "addressFamilyName",
                            "displayName": "User Family Name",
                            "simpleValueType": true,
                            "help": "Specify the User Family Name (Last Name). Don\u0027t include suffixes such as \u003ci\u003eJr\u003c/i\u003e. It can be already SHA256 hashed or not. It can be encrypted as well.\n\u003cbr/\u003e\u003cbr/\u003e\nIf already SHA256 hashed, make sure to follow these \u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/formatting#userdata_format\"\u003enormalization guidelines\u003c/a\u003e before applying the hash, and also to \u003cb\u003especify the hash encoding in the corresponding template field\u003c/b\u003e.",
                            "valueHint": "doe",
                            "valueValidators": []
                          },
                          {
                            "type": "TEXT",
                            "name": "addressRegion",
                            "displayName": "User Address Region",
                            "simpleValueType": true,
                            "help": "The 2-letter region code in \u003ca href\u003d\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\"\u003eISO-3166-1 alpha-2\u003c/a\u003e of the user\u0027s address. Do not hash.",
                            "valueHint": "US",
                            "valueValidators": []
                          },
                          {
                            "type": "TEXT",
                            "name": "addressPostalCode",
                            "displayName": "User Address Postal Code",
                            "simpleValueType": true,
                            "help": "The postal code of the user\u0027s address. Do not hash.\n\u003cbr/\u003e\nBoth US and international zip and postal codes are allowed. \n\u003cbr/\u003e\nFor US addresses, use either 5 digits or 5 digits followed by a 4-digit extension. Using a 4-digit extension may improve your match rate.\n\u003cbr/\u003e\nFor all other countries, don\u0027t use postal code extensions.",
                            "valueHint": "10001",
                            "valueValidators": []
                          }
                        ],
                        "enablingConditions": [
                          {
                            "paramName": "addUserDataAddress",
                            "paramValue": true,
                            "type": "EQUALS"
                          }
                        ],
                        "groupStyle": "NO_ZIPPY"
                      }
                    ]
                  }
                ]
              },
              {
                "type": "GROUP",
                "name": "ipDataGroup",
                "displayName": "IP Address Data",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "CHECKBOX",
                    "name": "autoMapIpData",
                    "checkboxText": "Auto-map IP Address Data",
                    "simpleValueType": true,
                    "help": "If enabled, the tag will attempt to automatically map parameters from the Event Data.\n\u003cbr/\u003e\u003cbr/\u003e\nAny value you manually enter in a field below will always override the auto-mapped value.\n\u003cbr/\u003e\u003cbr/\u003e\nDefault mappings:\n\u003cul\u003e\n\u003cli\u003eIP Address: \u003ci\u003eeventData.ip_override\u003c/i\u003e\u003c/li\u003e\n\u003c/ul\u003e",
                    "defaultValue": true
                  },
                  {
                    "type": "TEXT",
                    "name": "ipDataIpAddress",
                    "displayName": "IP Address",
                    "simpleValueType": true,
                    "help": "IP address captured at the time of customer interaction. Accepts IPv4 and IPv6. \n\u003cbr/\u003e\nSpecify a single IP address. Do not hash.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eNote:\u003c/b\u003e Google Ads and Display \u0026 Video 360 do not support IP address matching for end users in the European Economic Area (EEA), United Kingdom (UK), or Switzerland (CH). Add logic to conditionally exclude sharing IP addresses from users from these regions and ensure that you provide users with clear and comprehensive information about the data you collect on your sites, apps, and other properties and get consent where required by law or any applicable Google policies.",
                    "valueHint": "192.168.0.1"
                  },
                  {
                    "type": "TEXT",
                    "name": "ipDataObserveStartTime",
                    "displayName": "IP Address First Observation Timestamp",
                    "simpleValueType": true,
                    "help": "Optional.\n\u003cbr/\u003e\nFirst recorded interaction time from this IP address in a session.\n\u003cbr/\u003e\u003cbr/\u003e\nThe supported formats are:\n\u003cul\u003e \n\u003cli\u003eRFC 3339 compliant formats:\n\u003cul\u003e\n\u003cli\u003e2026-10-02T15:01:23Z\u003c/li\u003e\n\u003cli\u003e2026-10-02T15:01:23.045123456Z\u003c/li\u003e\n\u003cli\u003e2026-10-02T15:01:23+05:30\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e",
                    "valueHint": "2026-10-02T15:01:23Z"
                  },
                  {
                    "type": "TEXT",
                    "name": "ipDataObserveEndTime",
                    "displayName": "IP Address Last Observation Timestamp",
                    "simpleValueType": true,
                    "help": "Optional.\n\u003cbr/\u003e\nLast recorded interaction time from this IP address in a session.\n\u003cbr/\u003e\u003cbr/\u003e\nThe supported formats are:\n\u003cul\u003e \n\u003cli\u003eRFC 3339 compliant formats:\n\u003cul\u003e\n\u003cli\u003e2026-10-02T15:01:23Z\u003c/li\u003e\n\u003cli\u003e2026-10-02T15:01:23.045123456Z\u003c/li\u003e\n\u003cli\u003e2026-10-02T15:01:23+05:30\u003c/li\u003e\n\u003c/ul\u003e\n\u003c/li\u003e",
                    "valueHint": "2026-10-02T16:22:01Z"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "authFlow",
                "paramValue": "stape",
                "type": "EQUALS"
              },
              {
                "paramName": "audienceType",
                "paramValue": "CONTACT_ID",
                "type": "EQUALS"
              },
              {
                "paramName": "audienceType",
                "paramValue": "",
                "type": "NOT_PRESENT"
              }
            ]
          },
          {
            "type": "GROUP",
            "name": "ownAuthAudienceTypesGroup",
            "subParams": [
              {
                "type": "GROUP",
                "name": "mobileIdGroup",
                "displayName": "Mobile ID Data",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "mobileDataMobileIds",
                    "displayName": "Mobile ID(s)",
                    "simpleValueType": true,
                    "help": "Specify a single Mobile ID, or an array of up to 10 Mobile IDs, for the same user. Accepts Android Advertising IDs (AAID) and iOS IDFAs. Do not hash.\n\u003cbr/\u003e\u003cbr/\u003e\nThe Customer List must be created with the \u003ci\u003eMOBILE_ID\u003c/i\u003e upload key type, and its app (iOS or Android) must match the IDs being sent.",
                    "valueHint": "123e4567-e89b-12d3-a456-426614174000",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY"
                      }
                    ]
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "audienceType",
                    "paramValue": "MOBILE_ID",
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "GROUP",
                "name": "userIdGroup",
                "displayName": "User ID Data",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "userIdDataUserId",
                    "displayName": "User ID",
                    "simpleValueType": true,
                    "help": "Specify a single User ID: the unique identifier you assign to the user. Do not hash.\n\u003cbr/\u003e\u003cbr/\u003e\nThe Customer List must be created with the \u003ci\u003eUSER_ID\u003c/i\u003e upload key type. Only Google Ads supports User ID Customer Lists.",
                    "valueHint": "user_987654321",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY"
                      }
                    ]
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "audienceType",
                    "paramValue": "USER_ID",
                    "type": "EQUALS"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "authFlow",
                "paramValue": "own",
                "type": "EQUALS"
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "userMode",
            "paramValue": "single",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "audienceMembersMultipleUsersGroup",
        "subParams": [
          {
            "type": "TEXT",
            "name": "audienceMembers",
            "displayName": "Audience Members Array",
            "simpleValueType": true,
            "help": "Specify the Audience Members array. This is useful when you need to upload data for multiple users at once. At most\n10000 Audience Members can be specified in the array.\n\u003cbr/\u003e\u003cbr/\u003e\nEach Audience Member must carry the identifier of the selected \u003cb\u003eAudience Type\u003c/b\u003e; Audience Members carrying another type are skipped:\n\u003cul\u003e\n\u003cli\u003e\u003cb\u003eContact information\u003c/b\u003e: \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/AudienceMember#CompositeData\"\u003e\u003ci\u003eCompositeData\u003c/i\u003e\u003c/a\u003e (containing UserData and IpData) or \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/UserData\"\u003e\u003ci\u003eUserData\u003c/i\u003e\u003c/a\u003e.\u003c/li\u003e\n\u003cli\u003e\u003cb\u003eMobile ID\u003c/b\u003e: \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/MobileData\"\u003e\u003ci\u003eMobileData\u003c/i\u003e\u003c/a\u003e, e.g. \u003ci\u003e{ \"mobileData\": { \"mobileIds\": [\"...\"] } }\u003c/i\u003e.\u003c/li\u003e\n\u003cli\u003e\u003cb\u003eUser ID\u003c/b\u003e: \u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/AudienceMember#UserIdData\"\u003e\u003ci\u003eUserIdData\u003c/i\u003e\u003c/a\u003e, e.g. \u003ci\u003e{ \"userIdData\": { \"userId\": \"...\" } }\u003c/i\u003e.\u003c/li\u003e\n\u003c/ul\u003e\n\nThe array must be formatted as specified in the\nGoogle Documentation. You can specify different consent types for each user, overriding the request-level consent.\n\u003cbr/\u003e\u003cbr/\u003e\n\u003cb\u003eIf you already pass SHA256 hashed fields to the array, make sure to specify the SHA256 hash encoding in the corresponding template field. Otherwise, the tag will hash it automatically and set it for you.\u003c/b\u003e\n\u003cbr/\u003e\u003cbr/\u003e\nReferences: \n\u003cul\u003e\n\u003cli\u003e\u003ca href\u003d\"https://developers.google.com/data-manager/api/reference/rest/v1/AudienceMember\"\u003eAudience Member\u003c/a\u003e\u003c/li\u003e\n\u003cli\u003e\u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/formatting\"\u003eNormalization guidelines\u003c/a\u003e\u003c/li\u003e\n\u003cli\u003e\u003ca href\u003d\"https://developers.google.com/data-manager/api/get-started/quickstart/send-audience-members?persona\u003dadvertiser#build_the_request_body\"\u003eExample\u003c/a\u003e\u003c/li\u003e\n\u003c/ul\u003e",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "userMode",
            "paramValue": "multiple",
            "type": "EQUALS"
          }
        ],
        "groupStyle": "NO_ZIPPY"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "ownConnectionSettings",
    "displayName": "Own Connection Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "xGoogUserProject",
        "displayName": "X-Goog-User-Project header",
        "simpleValueType": true,
        "help": "A request header that specifies the GCP project to bill for access charges associated with the request.\n\u003ca href\u003d\"https://docs.cloud.google.com/storage/docs/json_api/v1/parameters#xgooguserproject\"\u003eLearn more.\u003c/a\u003e"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "authFlow",
        "paramValue": "own",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "tagExecutionConsentSettingsGroup",
    "displayName": "Tag Execution Consent Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "RADIO",
        "name": "adStorageConsent",
        "displayName": "",
        "radioItems": [
          {
            "value": "optional",
            "displayValue": "Send data always"
          },
          {
            "value": "required",
            "displayValue": "Send data in case marketing consent given",
            "help": "Aborts the tag execution if marketing consent (\u003ci\u003ead_storage\u003c/i\u003e Google Consent Mode or Stape\u0027s Data Tag parameter) is not given."
          }
        ],
        "simpleValueType": true,
        "defaultValue": "optional"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const createRegex = require('createRegex');
const encodeUriComponent = require('encodeUriComponent');
const getAllEventData = require('getAllEventData');
const getGoogleAuth = require('getGoogleAuth');
const getRequestHeader = require('getRequestHeader');
const getType = require('getType');
const JSON = require('JSON');
const logToConsole = require('logToConsole');
const makeString = require('makeString');
const Object = require('Object');
const sendHttpRequest = require('sendHttpRequest');
const sha256Sync = require('sha256Sync');

/*==============================================================================
==============================================================================*/

const API_VERSION = '1';
const AUDIENCE_TYPES = {
  contactId: 'CONTACT_ID',
  mobileId: 'MOBILE_ID',
  userId: 'USER_ID'
};
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
    Message: '🛑 [ERROR] Request was not sent.',
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
  const normalizeIds = (id) => {
    return replaceAll(makeString(id), '[^0-9]', '');
  };

  const destinations = [];
  const accountsAndDestinationsFromUI =
    data.stapeAuthDestinationsList || data.ownAuthDestinationsList; // Mutually exclusive

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
  const audienceMemberIDsLengthLimit = 10;
  const audienceMembers = [];
  const audienceType = getAudienceType(data);

  if (audienceType === AUDIENCE_TYPES.mobileId) {
    mappedData.audienceMembers = getMobileIdAudienceMembers(data, audienceMemberIDsLengthLimit);
    return mappedData;
  } else if (audienceType === AUDIENCE_TYPES.userId) {
    mappedData.audienceMembers = getUserIdAudienceMembers(data);
    return mappedData;
  }

  if (data.userMode === 'single') {
    const compositeData = {};
    const autoUserDataMapEnabled = data.hasOwnProperty('autoMapUserData')
      ? data.autoMapUserData
      : true;

    let emailAddresses;
    if (data.hasOwnProperty('userDataEmailAddresses')) {
      emailAddresses = data.userDataEmailAddresses;
    } else if (autoUserDataMapEnabled) {
      emailAddresses = getEmailAddressesFromEventData(eventData);
    }

    let phoneNumbers;
    if (data.hasOwnProperty('userDataPhoneNumbers')) {
      phoneNumbers = data.userDataPhoneNumbers;
    } else if (autoUserDataMapEnabled) {
      phoneNumbers = getPhoneNumbersFromEventData(eventData);
    }

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
        address = autoUserDataMapEnabled ? getAddressFromEventData(eventData) : undefined;
      }
    }

    if (emailAddresses || phoneNumbers || address) {
      const userDataIdentifiers = [];

      if (emailAddresses) {
        emailAddresses = itemizeUserIdentifier(emailAddresses);
        if (emailAddresses.length) {
          emailAddresses.forEach((email) => userDataIdentifiers.push({ emailAddress: email }));
        }
      }

      if (phoneNumbers) {
        phoneNumbers = itemizeUserIdentifier(phoneNumbers);
        if (phoneNumbers.length) {
          phoneNumbers.forEach((phone) => userDataIdentifiers.push({ phoneNumber: phone }));
        }
      }

      if (address) {
        userDataIdentifiers.push({
          address: address
        });
      }

      if (userDataIdentifiers && userDataIdentifiers.length) {
        compositeData.userData = {
          userIdentifiers: userDataIdentifiers.slice(0, audienceMemberIDsLengthLimit)
        };
      }
    }

    const autoMapIpDataEnabled = data.hasOwnProperty('autoMapIpData') ? data.autoMapIpData : true;
    let ipAddress;
    if (data.hasOwnProperty('ipDataIpAddress')) {
      ipAddress = data.ipDataIpAddress;
    } else if (autoMapIpDataEnabled) {
      ipAddress = eventData.ip_override;
    }
    if (getType(ipAddress) === 'string') {
      const ipData = {
        ipAddress: ipAddress,
        observeStartTime:
          getType(data.ipDataObserveStartTime) === 'string'
            ? data.ipDataObserveStartTime
            : undefined,
        observeEndTime:
          getType(data.ipDataObserveEndTime) === 'string' ? data.ipDataObserveEndTime : undefined
      };
      compositeData.ipData = [ipData];
    }

    if (compositeData.userData || compositeData.ipData) {
      audienceMembers.push({
        compositeData: compositeData
      });
    }
  } else if (data.userMode === 'multiple' && getType(data.audienceMembers) === 'array') {
    data.audienceMembers.forEach((am) => {
      if (getType(am) !== 'object') return;

      const hasUserData = getType(am.userData) === 'object';
      const hasCompositeData = getType(am.compositeData) === 'object';
      const hasCompositeUserData =
        hasCompositeData && getType(am.compositeData.userData) === 'object';
      const hasCompositeIpData =
        hasCompositeData &&
        getType(am.compositeData.ipData) === 'array' &&
        am.compositeData.ipData.length > 0;
      if (!hasUserData && !hasCompositeUserData && !hasCompositeIpData) {
        return;
      }

      const audienceMemberCompositeDataOnly = {
        compositeData: {}
      };

      if (hasCompositeUserData || hasCompositeIpData) {
        audienceMemberCompositeDataOnly.compositeData = am.compositeData;
        if (!hasCompositeUserData && hasUserData) {
          audienceMemberCompositeDataOnly.compositeData.userData = am.userData;
        }
      } else if (hasUserData) {
        audienceMemberCompositeDataOnly.compositeData.userData = am.userData;
      }

      if (am.consent) audienceMemberCompositeDataOnly.consent = am.consent;
      if (getType(am.destinationReferences) === 'array' && am.destinationReferences.length) {
        audienceMemberCompositeDataOnly.destinationReferences = am.destinationReferences;
      }
      audienceMembers.push(audienceMemberCompositeDataOnly);
    });
  }

  mappedData.audienceMembers = audienceMembers;

  return mappedData;
}

function getMobileIdAudienceMembers(data, mobileIdsLengthLimit) {
  const audienceMembers = [];

  if (data.userMode === 'single') {
    const mobileIds = itemizeUserIdentifier(data.mobileDataMobileIds).map((id) => makeString(id));
    if (mobileIds.length) {
      audienceMembers.push({
        mobileData: { mobileIds: mobileIds.slice(0, mobileIdsLengthLimit) }
      });
    }
  } else if (data.userMode === 'multiple' && getType(data.audienceMembers) === 'array') {
    data.audienceMembers.forEach((am) => {
      if (getType(am) !== 'object' || getType(am.mobileData) !== 'object') return;
      audienceMembers.push(pickAudienceMemberFields(am, 'mobileData'));
    });
  }

  return audienceMembers;
}

function getUserIdAudienceMembers(data) {
  const audienceMembers = [];

  if (data.userMode === 'single') {
    if (isValidValue(data.userIdDataUserId)) {
      audienceMembers.push({
        userIdData: { userId: makeString(data.userIdDataUserId) }
      });
    }
  } else if (data.userMode === 'multiple' && getType(data.audienceMembers) === 'array') {
    data.audienceMembers.forEach((am) => {
      if (getType(am) !== 'object' || getType(am.userIdData) !== 'object') return;
      audienceMembers.push(pickAudienceMemberFields(am, 'userIdData'));
    });
  }

  return audienceMembers;
}

function pickAudienceMemberFields(am, dataKey) {
  const audienceMember = {};
  audienceMember[dataKey] = am[dataKey];
  if (am.consent) audienceMember.consent = am.consent;
  if (getType(am.destinationReferences) === 'array' && am.destinationReferences.length) {
    audienceMember.destinationReferences = am.destinationReferences;
  }
  return audienceMember;
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
    emailParts[0] = emailParts[0].split('.').join('').split('+')[0];
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

  audienceMembers.forEach((am) => {
    if (getType(am) !== 'object') return;

    const userData = (am.compositeData || {}).userData || am.userData;
    if (getType(userData) !== 'object' || getType(userData.userIdentifiers) !== 'array') {
      return;
    }

    userData.userIdentifiers.forEach((userIdentifier) => {
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

function generateRequestUrl(data) {
  const audienceActionNormalization = {
    ingest: 'ingest',
    remove: 'remove'
  };
  const action = audienceActionNormalization[data.audienceAction];

  if (data.authFlow === 'own') {
    return 'https://datamanager.googleapis.com/v' + API_VERSION + '/audienceMembers:' + action;
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

function generateRequestOptions(data) {
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
    options.headers['x-datamanager-api-version'] = API_VERSION;
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

  const hasUserDataOrPairData = audienceMembers.some(
    (am) => (am.compositeData || {}).userData || am.userData || am.pairData
  );
  if (hasUserDataOrPairData && !mappedData.encoding) {
    return 'Encoding must be specified when sending UserData or PairData.';
  }

  const isUserDataAbsent = (am) => {
    const userData = (am.compositeData || {}).userData || am.userData;
    return (
      getType(userData) !== 'object' ||
      getType(userData.userIdentifiers) !== 'array' ||
      userData.userIdentifiers.length === 0 ||
      userData.userIdentifiers.some((i) => {
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

  const isIpDataAbsent = (am) => {
    const ipData = (am.compositeData || {}).ipData;
    return (
      getType(ipData) !== 'array' ||
      ipData.length === 0 ||
      ipData.some(
        (ip) => getType(ip) !== 'object' || getType(ip.ipAddress) !== 'string' || !ip.ipAddress
      )
    );
  };

  const isMobileDataInvalid = (am) => {
    const mobileIds = (am.mobileData || {}).mobileIds;
    return (
      getType(mobileIds) !== 'array' ||
      mobileIds.length === 0 ||
      mobileIds.length > 10 ||
      mobileIds.some((id) => getType(id) !== 'string' || !id)
    );
  };

  const isUserIdDataInvalid = (am) => {
    const userId = (am.userIdData || {}).userId;
    return getType(userId) !== 'string' || !userId;
  };

  const audienceType = getAudienceType(data);
  const destinations = mappedData.destinations;

  if (audienceType === AUDIENCE_TYPES.mobileId) {
    if (audienceMembers.some(isMobileDataInvalid)) {
      return 'Every Audience Member must have between 1 and 10 Mobile IDs.';
    }
  } else if (audienceType === AUDIENCE_TYPES.userId) {
    if (audienceMembers.some(isUserIdDataInvalid)) {
      return 'Every Audience Member must have a User ID.';
    }
    const hasUnsupportedDestination = destinations.some(
      (d) => d.operatingAccount.accountType !== 'GOOGLE_ADS'
    );
    if (hasUnsupportedDestination) {
      return 'User ID audiences are only supported by Google Ads destinations.';
    }
  } else {
    const doesNotHaveMatchData = audienceMembers.some((am) => {
      return isUserDataAbsent(am) && isIpDataAbsent(am);
    });
    if (doesNotHaveMatchData) {
      return 'At least 1 User Data or IP Data must be specified.';
    }
  }

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
  // Encoding and encryption only apply to Contact information (UserData).
  if (getAudienceType(data) === AUDIENCE_TYPES.contactId) {
    hashDataIfNeeded(mappedData); // This should come before addEncodingData().
    addEncodingData(data, mappedData);
    if (isUIFieldTrue(data.enableAudienceDataEncryption)) {
      addEncryptionData(data, mappedData);
    }
  }

  return mappedData;
}

function sendRequest(data, mappedData) {
  const requestUrl = generateRequestUrl(data);
  const requestOptions = generateRequestOptions(data);
  const requestBody = mappedData;

  return sendHttpRequest(requestUrl, requestOptions, JSON.stringify(requestBody))
    .then((result) => {
      // .then has to be used when the Authorization header is in use
      if (!useOptimisticScenario) {
        return result.statusCode >= 200 && result.statusCode < 400
          ? data.gtmOnSuccess()
          : data.gtmOnFailure();
      }
    })
    .catch((result) => {
      if (!useOptimisticScenario) return data.gtmOnFailure();
    });
}

/*==============================================================================
  Helpers
==============================================================================*/

function shouldExitEarly(data, eventData) {
  if (!isConsentGivenOrNotRequired(data, eventData)) return true;

  const url = getUrl(eventData);
  if (url && url.lastIndexOf('https://gtm-msr.appspot.com/', 0) === 0) return true;

  return false;
}

function getUrl(eventData) {
  return eventData.page_location || eventData.page_referrer || getRequestHeader('referer');
}

function getAudienceType(data) {
  // Only the Own Google Credentials auth supports audience types other than Contact information.
  if (data.authFlow !== 'own') return AUDIENCE_TYPES.contactId;
  const supportedAudienceTypes = Object.values(AUDIENCE_TYPES);
  return supportedAudienceTypes.indexOf(data.audienceType) !== -1
    ? data.audienceType
    : AUDIENCE_TYPES.contactId;
}

function itemizeUserIdentifier(input) {
  const type = getType(input);
  if (type === 'array') return input.filter((e) => e);
  if (type === 'string' || type === 'number') return [input];
  return [];
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
  rawDataToLog.TraceId = getRequestHeader('trace-id');
  logToConsole(JSON.stringify(rawDataToLog));
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "headerWhitelist",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "trace-id"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "referer"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "x-gtm-identifier"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "x-gtm-default-domain"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "x-gtm-api-key"
                  }
                ]
              }
            ]
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://datamanager.googleapis.com/*"
              },
              {
                "type": 1,
                "string": "https://*.stape.io/*"
              },
              {
                "type": 1,
                "string": "https://*.stape.net/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "use_google_credentials",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedScopes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.googleapis.com/auth/datamanager"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Request must not be sent if validations fail
  code: "const audienceMembersBaseMock = JSON.parse(JSON.stringify(multipleAudienceMembersMock.slice(0,\
    \ 2)));\n\n[\n  {\n    description: '[Single User] Should NOT send request if\
    \ Audience Members list is empty - all single user data fields are undefined or\
    \ false',\n    auth: 'stape',\n    mockData: {\n      userMode: 'single',\n  \
    \    userDataEmailAddresses: undefined,\n      userDataPhoneNumbers: undefined,\n\
    \      addUserDataAddress: false,\n      addressGivenName: undefined,\n      addressFamilyName:\
    \ undefined,\n      addressRegion: undefined,\n      addressPostalCode: undefined,\n\
    \      ipDataIpAddress: undefined\n    }\n  },\n  {\n    description: '[Multiple\
    \ Users] Should NOT send request if Audience Members list is empty - audienceMembers\
    \ is explicitly undefined',\n    auth: 'stape',\n    mockData: {\n      userMode:\
    \ 'multiple',\n      audienceMembers: undefined\n    }\n  },\n  {\n    description:\
    \ '[Multiple Users] Should NOT send request if Audience Members list is empty\
    \ - audienceMembers is an empty array',\n    auth: 'stape',\n    mockData: {\n\
    \      userMode: 'multiple',\n      audienceMembers: []\n    }\n  },\n  {\n  \
    \  description: '[Multiple Users] Should NOT send request if Audience Members\
    \ list is empty - audienceMembers contains an empty object',\n    auth: 'stape',\n\
    \    mockData: {\n      userMode: 'multiple',\n      audienceMembers: [{}]\n \
    \   }\n  },\n  {\n    description: '[Multiple Users] Should NOT send request if\
    \ Audience Members list is empty - userData and mobileData are explicitly undefined',\n\
    \    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    userData: undefined\n        }\n      }])\n    }\n  },\n  {\n    description:\
    \ '[Multiple Users] Should NOT send request if Audience Members list is empty\
    \ - userData is an empty object',\n    auth: 'stape',\n    mockData: {\n     \
    \ userMode: 'multiple',\n      audienceMembers: assign([], audienceMembersBaseMock[0],\
    \ [{\n        compositeData: {\n          userData: {},\n        }\n      }])\n\
    \    }\n  },\n  {\n    description: '[Multiple Users] Should NOT send request\
    \ if Audience Members list is empty - userIdentifiers inside userData is undefined',\n\
    \    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \     userData: { userIdentifiers: undefined }\n        }\n      }])\n    }\n\
    \  },\n  {\n    description: '[Multiple Users] Should NOT send request if Audience\
    \ Members list is empty - userIdentifiers inside userData is an empty array',\n\
    \    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    userData: { userIdentifiers: [] }\n        }\n      }])\n    }\n  },\n  {\n\
    \    description: '[Multiple Users] Should NOT send request if Audience Members\
    \ list is empty - userIdentifiers contains an invalid string element',\n    auth:\
    \ 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    userData: { userIdentifiers: ['test'] }\n          \n        }\n      }])\n\
    \    }\n  },\n  {\n    description: '[Multiple Users] Should NOT send request\
    \ if Audience Members list is empty - userIdentifiers contains an empty object',\n\
    \    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    userData: { userIdentifiers: [{}] }\n        }\n      }])\n    }\n  },\n\
    \  {\n    description: '[Multiple Users] Should NOT send request if Audience Members\
    \ list is empty - emailAddress inside userIdentifiers is undefined',\n    auth:\
    \ 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    userData: { userIdentifiers: [{ emailAddress: undefined }] }\n        }\n\
    \      }])\n    }\n  },\n  {\n    description: '[Multiple Users] Should NOT send\
    \ request if Audience Members list is empty - address inside userIdentifiers is\
    \ undefined',\n    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n\
    \      audienceMembers: assign([], audienceMembersBaseMock[0], [{\n        compositeData:\
    \ {\n          userData: { userIdentifiers: [{ address: undefined }] }\n     \
    \   }\n      }])\n    }\n  },\n  {\n    description: '[Multiple Users] Should\
    \ NOT send request if Audience Members list is empty - address inside userIdentifiers\
    \ is an empty object',\n    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n\
    \      audienceMembers: assign([], audienceMembersBaseMock[0], [{\n        compositeData:\
    \ {\n          userData: { userIdentifiers: [{ address: {} }] }\n        }\n \
    \     }])\n    }\n  },\n  {\n    description: '[Multiple Users] Should NOT send\
    \ request if Audience Members list is empty - givenName inside address is undefined',\n\
    \    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    userData: { userIdentifiers: [{ address: { givenName: undefined } }] },\n\
    \        }\n      }])\n    }\n  },\n  {\n    description: '[Multiple Users] Should\
    \ NOT send request if Audience Members list is empty - ipData is undefined',\n\
    \    auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    ipData: undefined,\n        }\n      }])\n    }\n  },\n  {\n    description:\
    \ '[Multiple Users] Should NOT send request if Audience Members list is empty\
    \ - ipData is an empty array',\n    auth: 'stape',\n    mockData: {\n      userMode:\
    \ 'multiple',\n      audienceMembers: assign([], audienceMembersBaseMock[0], [{\n\
    \        compositeData: {\n          ipData: [],\n        }\n      }])\n    }\n\
    \  },\n  {\n    description: '[Multiple Users] Should NOT send request if Audience\
    \ Members list is empty - ipData contains an empty string as IP Address',\n  \
    \  auth: 'stape',\n    mockData: {\n      userMode: 'multiple',\n      audienceMembers:\
    \ assign([], audienceMembersBaseMock[0], [{\n        compositeData: {\n      \
    \    ipData: [{ ipAddress: '' }],\n        }\n      }])\n    }\n  },\n  {\n  \
    \  description: '[Single User] Should NOT send request - autoMapUserData and autoMapIpData\
    \ disabled, no explicit data provided',\n    auth: 'stape',\n    setup: () =>\
    \ setGetAllEventData(),\n    mockData: {\n      userMode: 'single',\n      autoMapUserData:\
    \ false,\n      addUserDataAddress: false,\n      autoMapIpData: false,\n    },\n\
    \    keysToDelete: ['userDataEmailAddresses', 'userDataPhoneNumbers', 'addressGivenName',\
    \ 'addressFamilyName', 'addressRegion', 'addressPostalCode', 'ipDataIpAddress']\n\
    \  },\n  {\n    description: 'Invalid Destination ID fields - productDestinationId\
    \ is the string \"stape_undefined\"',\n    auth: 'stape',\n    mockData: {\n \
    \     userMode: 'single',\n      stapeAuthDestinationsList: [\n        {\n   \
    \       product: 'GOOGLE_ADS',\n          operatingAccountId: '123-213-123',\n\
    \          linkedAccountId: '123-213-123',\n          productDestinationId: 'stape_undefined'\n\
    \        }\n      ]\n    }\n  },\n  {\n    description: 'Invalid Destination ID\
    \ fields - linkedAccountId contains letters (\"abcde\")',\n    auth: 'stape',\n\
    \    mockData: {\n      userMode: 'single',\n      stapeAuthDestinationsList:\
    \ [\n        {\n          product: 'GOOGLE_ADS',\n          operatingAccountId:\
    \ '123-213-123',\n          linkedAccountId: 'abcde',\n          productDestinationId:\
    \ '123-213-123'\n        }\n      ]\n    }\n  },\n  {\n    description: 'Invalid\
    \ Destination ID fields - operatingAccountId is an empty string',\n    auth: 'stape',\n\
    \    mockData: {\n      userMode: 'single',\n      stapeAuthDestinationsList:\
    \ [\n        {\n          product: 'GOOGLE_ADS',\n          operatingAccountId:\
    \ '',\n          linkedAccountId: '123-213-123',\n          productDestinationId:\
    \ '123-213-123'\n        }\n      ]\n    }\n  },\n  {\n    description: 'Invalid\
    \ Destination ID fields - loginAccountId is the string \"undefined\"',\n    auth:\
    \ 'own',\n    mockData: {\n      userMode: 'single',\n      stapeAuthDestinationsList:\
    \ [\n        {\n          product: 'GOOGLE_ADS',\n          operatingAccountId:\
    \ '123-213-123',\n          loginAccountId: 'undefined',\n          productDestinationId:\
    \ '123-213-123'\n        }\n      ]\n    }\n  }\n].forEach((scenario, i) => {\n\
    \  if (scenario.setup) scenario.setup();\n  const copyMockData = setMockDataByAudienceMethod('ingest',\
    \ scenario.mockData, scenario.auth);\n  if (scenario.keysToDelete) {\n    scenario.keysToDelete.forEach((key)\
    \ => Object.delete(copyMockData, key));\n  }\n \n  runCode(copyMockData);\n \n\
    \  require('logToConsole')(i, scenario);\n  assertApi('sendHttpRequest').wasNotCalled();\n\
    \  assertApi('gtmOnSuccess').wasNotCalled();\n  assertApi('gtmOnFailure').wasCalled();\n\
    \  \n  cleanup();\n});"
- name: '[Ingest/Remove] Request URL is succesfully built based on Auth'
  code: "[\n  { \n    method: 'ingest',\n    auth: 'own',\n    expectedRequestUrl:\
    \ 'https://datamanager.googleapis.com/v' + expectedDataManagerApiVersion + '/audienceMembers:ingest'\n\
    \  },\n  { \n    method: 'ingest',\n    auth: 'stape',\n    expectedRequestUrl:\
    \ 'https://expectedXGtmIdentifier.expectedXGtmDefaultDomain/stape-api/expectedXGtmApiKey/v2/data-manager/ingest'\n\
    \  },\n  { \n    method: 'remove',\n    auth: 'own',\n    expectedRequestUrl:\
    \ 'https://datamanager.googleapis.com/v' + expectedDataManagerApiVersion + '/audienceMembers:remove'\n\
    \  },\n  { \n    method: 'remove',\n    auth: 'stape',\n    expectedRequestUrl:\
    \ 'https://expectedXGtmIdentifier.expectedXGtmDefaultDomain/stape-api/expectedXGtmApiKey/v2/data-manager/remove'\n\
    \  }\n].forEach(scenario => {  \n  const copyMockData = setMockDataByAudienceMethod(scenario.method,\
    \ undefined, scenario.auth);\n  \n  mock('sendHttpRequest', (requestUrl, requestOptions,\
    \ requestBody) => {\n    assertThat(requestUrl).isEqualTo(scenario.expectedRequestUrl);\n\
    \n    return Promise.create((resolve, reject) => {\n      resolve({ statusCode:\
    \ 200 });\n    });  \n  });\n  \n  runCode(copyMockData);\n\n  callLater(() =>\
    \ {\n    assertApi('gtmOnSuccess').wasCalled();\n    assertApi('gtmOnFailure').wasNotCalled();\n\
    \  });\n});"
- name: Request Options are succesfully built and sent based on Auth
  code: "[\n  {   \n    auth: 'own',\n    expectedRequestOptions: {\n      method:\
    \ 'POST',\n      headers: {\n        'Content-Type': 'application/json',\n   \
    \     'x-goog-user-project': 'xGoogUserProject'\n      },\n      authorization:\
    \ 'googleAuthToken'\n    }\n  },\n  { \n    auth: 'stape',\n    expectedRequestOptions:\
    \ {\n      method: 'POST',\n      headers: {\n        'Content-Type': 'application/json',\n\
    \        'x-datamanager-api-version': expectedDataManagerApiVersion\n      },\n\
    \      timeout: 20000\n    }\n  }\n].forEach(scenario => {\n  const copyMockData\
    \ = setMockDataByAudienceMethod('ingest', undefined, scenario.auth);\n\n  mock('sendHttpRequest',\
    \ (requestUrl, requestOptions, requestBody) => {\n    assertThat(requestOptions).isEqualTo(scenario.expectedRequestOptions);\n\
    \n    return Promise.create((resolve, reject) => {\n      resolve({ statusCode:\
    \ 200 });\n    });  \n  });\n  \n  runCode(copyMockData);\n  \n  callLater(()\
    \ => {\n    if (scenario.auth === 'own') {\n      assertApi('getGoogleAuth').wasCalledWith({\n\
    \        scopes: ['https://www.googleapis.com/auth/datamanager']\n      });\n\
    \    }\n    assertApi('gtmOnSuccess').wasCalled();\n    assertApi('gtmOnFailure').wasNotCalled();\n\
    \  });\n});"
- name: '[Ingest/Remove] [Single User] [Data from UI fields] Request is successfully
    built and sent'
  code: "[\n  { \n    method: 'ingest',\n  },\n  { \n    method: 'remove',\n  }\n\
    ].forEach(scenario => {  \n  const copyMockData = setMockDataByAudienceMethod(scenario.method,\
    \ {\n    userMode: 'single'\n  });\n  \n  const expectedRequestBody = {\n    destinations:\
    \ [\n      {\n        reference: 'stape_3',\n        productDestinationId: 'stape_3',\n\
    \        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '1' },\n  \
    \      linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '2' }\n      },\n\
    \      {\n        reference: 'stape_33',\n        productDestinationId: 'stape_33',\n\
    \        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '11' },\n \
    \       linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '22' }\n      }\n\
    \    ],\n    validateOnly: false,\n    audienceMembers: [\n      {\n        compositeData:\
    \ {\n          userData: {\n            userIdentifiers: [\n              {\n\
    \                emailAddress:\n                  '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b'\n\
    \              },\n              {\n                phoneNumber:\n           \
    \       '910a625c4ba147b544e6bd2f267e130ae14c591b6ba9c25cb8573322dedbebd0'\n \
    \             },\n              {\n                address: {\n              \
    \    givenName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  familyName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  regionCode: 'BR',\n                  postalCode: '10001'\n\
    \                }\n              }\n            ]\n          },\n          ipData:\
    \ [{ ipAddress: '192.168.0.1' }]\n        }\n      }\n    ],\n    encoding: 'HEX',\n\
    \    encryptionInfo: {\n      gcpWrappedKeyInfo: {\n        keyType: 'XCHACHA20_POLY1305',\n\
    \        wipProvider: '123',\n        kekUri: '123',\n        encryptedDek: '123'\n\
    \      }\n    }\n  };\n  \n  if (scenario.method === 'ingest') {\n    expectedRequestBody.termsOfService\
    \ = { customerMatchTermsOfServiceStatus: 'ACCEPTED' };\n    expectedRequestBody.consent\
    \ = {\n      adUserData: 'CONSENT_GRANTED',\n      adPersonalization: 'CONSENT_GRANTED'\n\
    \    };\n  }\n  \n  mock('sendHttpRequest', (requestUrl, requestOptions, requestBody)\
    \ => {\n    const parsedRequestBody = JSON.parse(requestBody);\n    assertThat(parsedRequestBody).isEqualTo(expectedRequestBody);\n\
    \n    return Promise.create((resolve, reject) => {\n      resolve({ statusCode:\
    \ 200 });\n    });  \n  });\n  \n  runCode(copyMockData);\n\n  callLater(() =>\
    \ {\n    assertApi('gtmOnSuccess').wasCalled();\n    assertApi('gtmOnFailure').wasNotCalled();\n\
    \  });\n});"
- name: '[Ingest/Remove] [Single User] [Data from auto-mapping] Request is successfully
    built and sent'
  code: "[\n  { \n    method: 'ingest',\n  },\n  { \n    method: 'remove',\n  }\n\
    ].forEach(scenario => {\n  setGetAllEventData();\n\n  const copyMockData = setMockDataByAudienceMethod(scenario.method,\
    \ {\n    userMode: 'single',\n    autoMapUserData: true,\n    userDataEmailAddresses:\
    \ undefined,\n    userDataPhoneNumbers: undefined,\n    addUserDataAddress: true,\n\
    \    enableAudienceDataEncryption: false,\n    autoMapIpData: true,\n    ipDataIpAddress:\
    \ undefined,\n  });\n  \n  [\n    'userDataEmailAddresses',\n    'userDataPhoneNumbers',\n\
    \    'addressGivenName',\n    'addressFamilyName',\n    'addressRegion',\n   \
    \ 'addressPostalCode',\n    'ipDataIpAddress'\n  ].forEach((key) => Object.delete(copyMockData,\
    \ key));\n  \n  const expectedRequestBody = {\n    destinations: [\n      {\n\
    \        reference: 'stape_3',\n        productDestinationId: 'stape_3',\n   \
    \     operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '1' },\n     \
    \   linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '2' }\n      },\n \
    \     {\n        reference: 'stape_33',\n        productDestinationId: 'stape_33',\n\
    \        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '11' },\n \
    \       linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '22' }\n      }\n\
    \    ],\n    validateOnly: false,\n    audienceMembers: [\n      {\n        compositeData:\
    \ {\n          userData: {\n            userIdentifiers: [\n              {\n\
    \                emailAddress:\n                  'ddffdce54594d729a13068951750239a1943c295a5f89349b5cf69744d4a1ba2'\n\
    \              },\n              {\n                emailAddress:\n          \
    \        'afea90f78a2e604dc6cc5d7826ffdd2bfbab612a0c1222acf8df173319b7e809'\n\
    \              },\n              {\n                phoneNumber:\n           \
    \       'c698c0b85d32cbcf5033ada58f34de87d4f7415efaf5a8d1c1e9e63393dcc85e'\n \
    \             },\n              {\n                address: {\n              \
    \    givenName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  familyName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  postalCode: '10001',\n                  regionCode: 'BR'\n\
    \                }\n              }\n            ]\n          },\n          ipData:\
    \ [{ ipAddress: '2804:14d:c096:8dd6:311c:8c00:e6c:e33' }]\n        }\n      }\n\
    \    ],\n    encoding: 'HEX'\n  };\n  \n  if (scenario.method === 'ingest') {\n\
    \    expectedRequestBody.termsOfService = { customerMatchTermsOfServiceStatus:\
    \ 'ACCEPTED' };\n    expectedRequestBody.consent = {\n      adUserData: 'CONSENT_GRANTED',\n\
    \      adPersonalization: 'CONSENT_GRANTED'\n    };\n  }\n  \n  mock('sendHttpRequest',\
    \ (requestUrl, requestOptions, requestBody) => {\n    const parsedRequestBody\
    \ = JSON.parse(requestBody);\n    assertThat(parsedRequestBody).isEqualTo(expectedRequestBody);\n\
    \n    return Promise.create((resolve, reject) => {\n      resolve({ statusCode:\
    \ 200 });\n    });  \n  });\n  \n  runCode(copyMockData);\n\n  callLater(() =>\
    \ {\n    assertApi('gtmOnSuccess').wasCalled();\n    assertApi('gtmOnFailure').wasNotCalled();\n\
    \  });\n  \n  cleanup();\n});"
- name: '[Ingest/Remove] [Multiple Users] [Data from UI fields] Request is successfully
    built and sent'
  code: "[\n  { \n    method: 'ingest',\n  },\n  { \n    method: 'remove',\n  }\n\
    ].forEach(scenario => {  \n  const copyMockData = setMockDataByAudienceMethod(scenario.method,\
    \ {\n    userMode: 'multiple',\n    audienceMembers: multipleAudienceMembersMock\n\
    \  });\n  \n  const expectedRequestBody = {\n    destinations: [\n      {\n  \
    \      reference: 'stape_3',\n        productDestinationId: 'stape_3',\n     \
    \   operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '1' },\n       \
    \ linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '2' }\n      },\n   \
    \   {\n        reference: 'stape_33',\n        productDestinationId: 'stape_33',\n\
    \        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '11' },\n \
    \       linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '22' }\n      }\n\
    \    ],\n    validateOnly: false,\n    audienceMembers: [\n      {\n        compositeData:\
    \ {\n          userData: {\n            userIdentifiers: [\n              {\n\
    \                emailAddress:\n                  '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b'\n\
    \              },\n              {\n                phoneNumber:\n           \
    \       '910a625c4ba147b544e6bd2f267e130ae14c591b6ba9c25cb8573322dedbebd0'\n \
    \             },\n              {\n                address: {\n              \
    \    givenName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  familyName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  regionCode: 'BR',\n                  postalCode: '10001'\n\
    \                }\n              }\n            ]\n          }\n        }\n \
    \     },\n      {\n        compositeData: {\n          userData: {\n         \
    \   userIdentifiers: [\n              {\n                emailAddress:\n     \
    \             '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'\n\
    \              },\n              {\n                phoneNumber:\n           \
    \       '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'\n \
    \             },\n              {\n                address: {\n              \
    \    givenName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  familyName:\n                    '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
    \                  regionCode: 'US',\n                  postalCode: '22222'\n\
    \                }\n              }\n            ]\n          }\n        }\n \
    \     }\n      // Mobile IDs and PAIR IDs are not currently supported.\n    ],\n\
    \    encoding: 'HEX',\n    encryptionInfo: {\n      gcpWrappedKeyInfo: {\n   \
    \     keyType: 'XCHACHA20_POLY1305',\n        wipProvider: '123',\n        kekUri:\
    \ '123',\n        encryptedDek: '123'\n      }\n    }\n  };\n  \n  if (scenario.method\
    \ === 'ingest') {\n    expectedRequestBody.termsOfService = { customerMatchTermsOfServiceStatus:\
    \ 'ACCEPTED' };\n    expectedRequestBody.consent = {\n      adUserData: 'CONSENT_GRANTED',\n\
    \      adPersonalization: 'CONSENT_GRANTED'\n    };\n  }\n  \n  mock('sendHttpRequest',\
    \ (requestUrl, requestOptions, requestBody) => {\n    const parsedRequestBody\
    \ = JSON.parse(requestBody);\n    assertThat(parsedRequestBody).isEqualTo(expectedRequestBody);\n\
    \n    return Promise.create((resolve, reject) => {\n      resolve({ statusCode:\
    \ 200 });\n    });  \n  });\n  \n  runCode(copyMockData);\n\n  callLater(() =>\
    \ {\n    assertApi('gtmOnSuccess').wasCalled();\n    assertApi('gtmOnFailure').wasNotCalled();\n\
    \  });\n});"
- name: '[Encoding] Is correctly defined when hashed Audience Data is already Base64
    or HEX encoded'
  code: "[\n  {\n    mockUserDataString : '426a1c28c61b7ba258fa3cc300ba7cd3abc11c0d4b585d3ce4a15d6f22d6d363',\n\
    \    expectedEncoding: 'HEX'\n  },\n  {\n    mockUserDataString : 'osrifrM+43jsL6zoLw/I4luJ2T20MMOXTxBMsVIEx1o=',\n\
    \    expectedEncoding: 'BASE64'\n  }\n].forEach((scenario) => {\n  setGetAllEventData();\n\
    \  \n  const copyMockData = setMockDataByAudienceMethod('ingest', {\n    userMode:\
    \ 'single',\n    audienceDataEncoding: undefined,\n    userDataEmailAddresses:\
    \ scenario.mockUserDataString,\n    userDataPhoneNumbers: scenario.mockUserDataString,\n\
    \    addUserDataAddress: true,\n    addressGivenName: scenario.mockUserDataString,\n\
    \    addressFamilyName: scenario.mockUserDataString,\n    pairIds: [scenario.mockUserDataString]\n\
    \  });\n\n  mock('sendHttpRequest', (requestUrl, requestOptions, requestBody)\
    \ => {\n    const parsedRequestBody = JSON.parse(requestBody);\n    assertThat(parsedRequestBody.encoding).isEqualTo(scenario.expectedEncoding);\n\
    \  \n    return Promise.create((resolve, reject) => {\n      resolve({ statusCode:\
    \ 200 });\n    });  \n  });\n  \n  runCode(copyMockData);\n  \n  callLater(()\
    \ => {\n    assertApi('gtmOnSuccess').wasCalled();\n    assertApi('gtmOnFailure').wasNotCalled();\n\
    \  });\n  \n  cleanup();\n});"
- name: '[Failure] Should call gtmOnFailure when promise resolves and status code
    is outside success range, or when the request fails'
  code: "[\n  {\n    callback: (resolve, reject) => resolve({ statusCode: 500 })\n\
    \  },\n  {\n    callback: (resolve, reject) => reject({ reason: 'Failed' })\n\
    \  }\n].forEach((scenario) => {\n  const copyMockData = setMockDataByAudienceMethod('ingest');\n\
    \  \n  mock('sendHttpRequest', (requestUrl, requestOptions, requestBody) => {\n\
    \    return Promise.create((resolve, reject) => {\n      scenario.callback(resolve,\
    \ reject);\n    });  \n  });\n  \n  runCode(copyMockData);\n  \n  callLater(()\
    \ => {\n    assertApi('gtmOnSuccess').wasNotCalled();\n    assertApi('gtmOnFailure').wasCalled();\n\
    \  });\n});"
- name: '[Single User] [IP Data] autoMap flags and optional time fields control compositeData
    output'
  code: "[\n   {\n     description: 'autoMapUserData disabled - only ipData in compositeData',\n\
    \     mockData: {\n       autoMapUserData: false,\n       addUserDataAddress:\
    \ false,\n       autoMapIpData: false,\n       ipDataIpAddress: '1.2.3.4',\n \
    \    },\n     keysToDelete: ['userDataEmailAddresses', 'userDataPhoneNumbers',\n\
    \       'addressGivenName', 'addressFamilyName', 'addressRegion', 'addressPostalCode'],\n\
    \     assertBody: (body) => {\n       const cd = body.audienceMembers[0].compositeData;\n\
    \       assertThat(cd.userData).isUndefined();\n       assertThat(cd.ipData).isEqualTo([{\
    \ ipAddress: '1.2.3.4' }]);\n     }\n   },\n   {\n     description: 'autoMapIpData\
    \ disabled - only userData in compositeData',\n     mockData: {\n       autoMapUserData:\
    \ false,\n       addUserDataAddress: false,\n       autoMapIpData: false,\n  \
    \     userDataEmailAddresses: '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b',\n\
    \     },\n     keysToDelete: ['userDataPhoneNumbers', 'addressGivenName', 'addressFamilyName',\n\
    \       'addressRegion', 'addressPostalCode', 'ipDataIpAddress'],\n     assertBody:\
    \ (body) => {\n       const cd = body.audienceMembers[0].compositeData;\n    \
    \   assertThat(cd.ipData).isUndefined();\n       assertThat(cd.userData).isDefined();\n\
    \     }\n   },\n   {\n     description: 'ipData entry includes observeStartTime\
    \ and observeEndTime when provided',\n     mockData: {\n       ipDataIpAddress:\
    \ '1.2.3.4',\n       ipDataObserveStartTime: '2024-01-01T00:00:00Z',\n       ipDataObserveEndTime:\
    \ '2024-12-31T23:59:59Z',\n     },\n     keysToDelete: [],\n     assertBody: (body)\
    \ => {\n       const ipEntry = body.audienceMembers[0].compositeData.ipData[0];\n\
    \       assertThat(ipEntry.ipAddress).isEqualTo('1.2.3.4');\n       assertThat(ipEntry.observeStartTime).isEqualTo('2024-01-01T00:00:00Z');\n\
    \       assertThat(ipEntry.observeEndTime).isEqualTo('2024-12-31T23:59:59Z');\n\
    \     }\n   }\n ].forEach((scenario) => {\n   cleanup();\n \n   const copyMockData\
    \ = setMockDataByAudienceMethod('ingest', assign({\n     userMode: 'single'\n\
    \   }, scenario.mockData));\n \n   scenario.keysToDelete.forEach((key) => Object.delete(copyMockData,\
    \ key));\n \n   mock('sendHttpRequest', (requestUrl, requestOptions, requestBody)\
    \ => {\n     const parsedRequestBody = JSON.parse(requestBody);\n     scenario.assertBody(parsedRequestBody);\n\
    \ \n     return Promise.create((resolve, reject) => {\n       resolve({ statusCode:\
    \ 200 });\n     });\n   });\n \n   runCode(copyMockData);\n \n   callLater(()\
    \ => {\n     assertApi('gtmOnSuccess').wasCalled();\n     assertApi('gtmOnFailure').wasNotCalled();\n\
    \   });\n });"
- name: '[Multiple Users] [compositeData] Request correctly handles compositeData
    format and ip-only members'
  code: "[\n   { method: 'ingest' },\n   { method: 'remove' }\n ].forEach(scenario\
    \ => {\n   const compositeAudienceMembers = [\n     {\n       compositeData: {\n\
    \         userData: {\n           userIdentifiers: [\n             { emailAddress:\
    \ '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b' }\n     \
    \      ]\n         },\n         ipData: [{ ipAddress: '192.168.0.1' }]\n     \
    \  }\n     },\n     {\n       compositeData: {\n         ipData: [{ ipAddress:\
    \ '10.0.0.1' }]\n       }\n     }\n   ];\n \n   const copyMockData = setMockDataByAudienceMethod(scenario.method,\
    \ {\n     userMode: 'multiple',\n     audienceMembers: compositeAudienceMembers\n\
    \   });\n \n   const expectedRequestBody = {\n     destinations: [\n       {\n\
    \         reference: 'stape_3',\n         productDestinationId: 'stape_3',\n \
    \        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '1' },\n  \
    \       linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '2' }\n       },\n\
    \       {\n         reference: 'stape_33',\n         productDestinationId: 'stape_33',\n\
    \         operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '11' },\n\
    \         linkedAccount: { accountType: 'GOOGLE_ADS', accountId: '22' }\n    \
    \   }\n     ],\n     validateOnly: false,\n     audienceMembers: [\n       {\n\
    \         compositeData: {\n           userData: {\n             userIdentifiers:\
    \ [\n               { emailAddress: '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b'\
    \ }\n             ]\n           },\n           ipData: [{ ipAddress: '192.168.0.1'\
    \ }]\n         }\n       },\n       {\n         compositeData: {\n           ipData:\
    \ [{ ipAddress: '10.0.0.1' }]\n         }\n       }\n     ],\n     encoding: 'HEX',\n\
    \     encryptionInfo: {\n       gcpWrappedKeyInfo: {\n         keyType: 'XCHACHA20_POLY1305',\n\
    \         wipProvider: '123',\n         kekUri: '123',\n         encryptedDek:\
    \ '123'\n       }\n     }\n   };\n \n   if (scenario.method === 'ingest') {\n\
    \     expectedRequestBody.termsOfService = { customerMatchTermsOfServiceStatus:\
    \ 'ACCEPTED' };\n     expectedRequestBody.consent = {\n       adUserData: 'CONSENT_GRANTED',\n\
    \       adPersonalization: 'CONSENT_GRANTED'\n     };\n   }\n \n   mock('sendHttpRequest',\
    \ (requestUrl, requestOptions, requestBody) => {\n     const parsedRequestBody\
    \ = JSON.parse(requestBody);\n     assertThat(parsedRequestBody).isEqualTo(expectedRequestBody);\n\
    \ \n     return Promise.create((resolve, reject) => {\n       resolve({ statusCode:\
    \ 200 });\n     });\n   });\n \n   runCode(copyMockData);\n \n   callLater(()\
    \ => {\n     assertApi('gtmOnSuccess').wasCalled();\n     assertApi('gtmOnFailure').wasNotCalled();\n\
    \   });\n });"
- name: '[Audience Type] [Single User] Mobile ID and User ID requests are built and sent with Own auth'
  code: |-
    const elevenMobileIds = ['m1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'm8', 'm9', 'm10', 'm11'];
    const ownDestinationsExpected = [
      {
        reference: '3',
        productDestinationId: '3',
        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '1' },
        loginAccount: { accountType: 'GOOGLE_ADS', accountId: '2' }
      },
      {
        reference: '33',
        productDestinationId: '33',
        operatingAccount: { accountType: 'GOOGLE_ADS', accountId: '11' },
        loginAccount: { accountType: 'GOOGLE_ADS', accountId: '22' }
      }
    ];

    [
      {
        description: 'Mobile ID - array of Mobile IDs',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: ['aaid-1', 'idfa-2'] },
        expectedAudienceMembers: [{ mobileData: { mobileIds: ['aaid-1', 'idfa-2'] } }]
      },
      {
        description: 'Mobile ID - single Mobile ID string',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: 'aaid-1' },
        expectedAudienceMembers: [{ mobileData: { mobileIds: ['aaid-1'] } }]
      },
      {
        description: 'Mobile ID - more than 10 Mobile IDs are truncated to 10',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: elevenMobileIds },
        expectedAudienceMembers: [{ mobileData: { mobileIds: elevenMobileIds.slice(0, 10) } }]
      },
      {
        description: 'Mobile ID - Display and Video 360 destination is accepted',
        mockData: {
          audienceType: 'MOBILE_ID',
          mobileDataMobileIds: 'aaid-1',
          ownAuthDestinationsList: [
            { product: 'DISPLAY_VIDEO_ADVERTISER', operatingAccountId: '1', productDestinationId: '3' }
          ]
        },
        expectedDestinations: [
          {
            reference: '3',
            productDestinationId: '3',
            operatingAccount: { accountType: 'DISPLAY_VIDEO_ADVERTISER', accountId: '1' }
          }
        ],
        expectedAudienceMembers: [{ mobileData: { mobileIds: ['aaid-1'] } }]
      },
      {
        description: 'User ID - string User ID',
        mockData: { audienceType: 'USER_ID', userIdDataUserId: 'user_987654321' },
        expectedAudienceMembers: [{ userIdData: { userId: 'user_987654321' } }]
      },
      {
        description: 'User ID - numeric User ID is converted to string',
        mockData: { audienceType: 'USER_ID', userIdDataUserId: 987654321 },
        expectedAudienceMembers: [{ userIdData: { userId: '987654321' } }]
      }
    ].forEach((scenario) => {
      ['ingest', 'remove'].forEach((method) => {
        cleanup();
        const copyMockData = setMockDataByAudienceMethod(method, scenario.mockData, 'own');

        // Encoding and encryption only apply to Contact information, so they must not be sent.
        const expectedRequestBody = {
          validateOnly: false,
          destinations: scenario.expectedDestinations || ownDestinationsExpected,
          audienceMembers: scenario.expectedAudienceMembers
        };
        if (method === 'ingest') {
          expectedRequestBody.termsOfService = { customerMatchTermsOfServiceStatus: 'ACCEPTED' };
          expectedRequestBody.consent = {
            adUserData: 'CONSENT_GRANTED',
            adPersonalization: 'CONSENT_GRANTED'
          };
        }

        mock('sendHttpRequest', (requestUrl, requestOptions, requestBody) => {
          require('logToConsole')(method, scenario.description);
          assertThat(requestUrl).isEqualTo(
            'https://datamanager.googleapis.com/v' +
              expectedDataManagerApiVersion +
              '/audienceMembers:' +
              method
          );
          assertThat(JSON.parse(requestBody)).isEqualTo(expectedRequestBody);
          return Promise.create((resolve) => resolve({ statusCode: 200 }));
        });

        runCode(copyMockData);
      });
    });

    callLater(() => {
      assertApi('sendHttpRequest').wasCalled();
      assertApi('gtmOnSuccess').wasCalled();
      assertApi('gtmOnFailure').wasNotCalled();
    });
- name: '[Audience Type] [Multiple Users] Only members carrying the selected identifier type are sent'
  code: |-
    const audienceMembersMock = [
      {
        mobileData: { mobileIds: ['aaid-1', 'idfa-2'] },
        consent: { adUserData: 'CONSENT_DENIED', adPersonalization: 'CONSENT_DENIED' },
        destinationReferences: ['3'],
        extraField: 'should be dropped'
      },
      { userIdData: { userId: 'user_1' }, destinationReferences: [] },
      JSON.parse(JSON.stringify(multipleAudienceMembersMock[0])),
      { compositeData: { ipData: [{ ipAddress: '192.168.0.1' }] } },
      'not an object',
      { mobileData: 'not an object' },
      { userIdData: { userId: 'user_2' }, consent: { adUserData: 'CONSENT_GRANTED' } }
    ];

    [
      {
        audienceType: 'MOBILE_ID',
        expectedAudienceMembers: [
          {
            mobileData: { mobileIds: ['aaid-1', 'idfa-2'] },
            consent: { adUserData: 'CONSENT_DENIED', adPersonalization: 'CONSENT_DENIED' },
            destinationReferences: ['3']
          }
        ]
      },
      {
        audienceType: 'USER_ID',
        expectedAudienceMembers: [
          { userIdData: { userId: 'user_1' } },
          { userIdData: { userId: 'user_2' }, consent: { adUserData: 'CONSENT_GRANTED' } }
        ]
      }
    ].forEach((scenario) => {
      ['ingest', 'remove'].forEach((method) => {
        cleanup();
        const copyMockData = setMockDataByAudienceMethod(
          method,
          {
            userMode: 'multiple',
            audienceType: scenario.audienceType,
            audienceMembers: JSON.parse(JSON.stringify(audienceMembersMock))
          },
          'own'
        );

        mock('sendHttpRequest', (requestUrl, requestOptions, requestBody) => {
          const parsedRequestBody = JSON.parse(requestBody);
          assertThat(parsedRequestBody.audienceMembers).isEqualTo(scenario.expectedAudienceMembers);
          assertThat(parsedRequestBody.encoding).isUndefined();
          assertThat(parsedRequestBody.encryptionInfo).isUndefined();
          return Promise.create((resolve) => resolve({ statusCode: 200 }));
        });

        runCode(copyMockData);
      });
    });

    callLater(() => {
      assertApi('sendHttpRequest').wasCalled();
      assertApi('gtmOnSuccess').wasCalled();
      assertApi('gtmOnFailure').wasNotCalled();
    });
- name: '[Audience Type] Falls back to Contact information when undefined, unknown, or when using Stape auth'
  code: |-
    [
      {
        description: 'Own auth and Audience Type undefined',
        auth: 'own',
        mockData: { audienceType: undefined }
      },
      {
        description: 'Own auth and Audience Type is an unknown value',
        auth: 'own',
        mockData: { audienceType: 'GOOGLE_USER_ID' }
      },
      {
        description: 'Own auth and Audience Type is CONTACT_ID',
        auth: 'own',
        mockData: {
          audienceType: 'CONTACT_ID',
          mobileDataMobileIds: 'aaid-1',
          userIdDataUserId: 'user_1'
        }
      },
      {
        description: 'Stape auth ignores Audience Type MOBILE_ID',
        auth: 'stape',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: 'aaid-1' }
      },
      {
        description: 'Stape auth ignores Audience Type USER_ID',
        auth: 'stape',
        mockData: { audienceType: 'USER_ID', userIdDataUserId: 'user_1' }
      }
    ].forEach((scenario) => {
      cleanup();
      const copyMockData = setMockDataByAudienceMethod('ingest', scenario.mockData, scenario.auth);

      mock('sendHttpRequest', (requestUrl, requestOptions, requestBody) => {
        require('logToConsole')(scenario.description);
        const parsedRequestBody = JSON.parse(requestBody);
        assertThat(parsedRequestBody.audienceMembers).isEqualTo([
          {
            compositeData: {
              userData: {
                userIdentifiers: [
                  { emailAddress: '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b' },
                  { phoneNumber: '910a625c4ba147b544e6bd2f267e130ae14c591b6ba9c25cb8573322dedbebd0' },
                  {
                    address: {
                      givenName: '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',
                      familyName: '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',
                      regionCode: 'BR',
                      postalCode: '10001'
                    }
                  }
                ]
              },
              ipData: [{ ipAddress: '192.168.0.1' }]
            }
          }
        ]);
        assertThat(parsedRequestBody.encoding).isEqualTo('HEX');
        assertThat(parsedRequestBody.encryptionInfo).isEqualTo({
          gcpWrappedKeyInfo: {
            keyType: 'XCHACHA20_POLY1305',
            wipProvider: '123',
            kekUri: '123',
            encryptedDek: '123'
          }
        });
        return Promise.create((resolve) => resolve({ statusCode: 200 }));
      });

      runCode(copyMockData);
    });

    callLater(() => {
      assertApi('sendHttpRequest').wasCalled();
      assertApi('gtmOnSuccess').wasCalled();
      assertApi('gtmOnFailure').wasNotCalled();
    });
- name: '[Audience Type] Request is not sent when the selected identifier is missing or invalid, or the destination does not support it'
  code: |-
    [
      {
        description: '[Mobile ID] [Single User] Mobile IDs field is undefined',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: undefined }
      },
      {
        description: '[Mobile ID] [Single User] Mobile IDs field is an empty array',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: [] }
      },
      {
        description: '[Mobile ID] [Single User] Mobile IDs field only contains empty values',
        mockData: { audienceType: 'MOBILE_ID', mobileDataMobileIds: ['', null] }
      },
      {
        description: '[Mobile ID] [Multiple Users] no member carries mobileData',
        mockData: {
          audienceType: 'MOBILE_ID',
          userMode: 'multiple',
          audienceMembers: [
            { userIdData: { userId: 'user_1' } },
            JSON.parse(JSON.stringify(multipleAudienceMembersMock[0]))
          ]
        }
      },
      {
        description: '[Mobile ID] [Multiple Users] mobileIds is an empty array',
        mockData: {
          audienceType: 'MOBILE_ID',
          userMode: 'multiple',
          audienceMembers: [{ mobileData: { mobileIds: [] } }]
        }
      },
      {
        description: '[Mobile ID] [Multiple Users] mobileIds is not an array',
        mockData: {
          audienceType: 'MOBILE_ID',
          userMode: 'multiple',
          audienceMembers: [{ mobileData: { mobileIds: 'aaid-1' } }]
        }
      },
      {
        description: '[Mobile ID] [Multiple Users] mobileIds has more than 10 items',
        mockData: {
          audienceType: 'MOBILE_ID',
          userMode: 'multiple',
          audienceMembers: [
            { mobileData: { mobileIds: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'] } }
          ]
        }
      },
      {
        description: '[Mobile ID] [Multiple Users] mobileIds contains an empty string or a non-string',
        mockData: {
          audienceType: 'MOBILE_ID',
          userMode: 'multiple',
          audienceMembers: [
            { mobileData: { mobileIds: ['aaid-1'] } },
            { mobileData: { mobileIds: ['', 123] } }
          ]
        }
      },
      {
        description: '[User ID] [Single User] User ID field is undefined',
        mockData: { audienceType: 'USER_ID', userIdDataUserId: undefined }
      },
      {
        description: '[User ID] [Single User] User ID field is an empty string',
        mockData: { audienceType: 'USER_ID', userIdDataUserId: '' }
      },
      {
        description: '[User ID] [Multiple Users] no member carries userIdData',
        mockData: {
          audienceType: 'USER_ID',
          userMode: 'multiple',
          audienceMembers: [{ mobileData: { mobileIds: ['aaid-1'] } }]
        }
      },
      {
        description: '[User ID] [Multiple Users] userId is an empty string',
        mockData: {
          audienceType: 'USER_ID',
          userMode: 'multiple',
          audienceMembers: [{ userIdData: { userId: '' } }]
        }
      },
      {
        description: '[User ID] [Multiple Users] userId is not a string',
        mockData: {
          audienceType: 'USER_ID',
          userMode: 'multiple',
          audienceMembers: [{ userIdData: { userId: 123 } }]
        }
      },
      {
        description: '[User ID] Display and Video 360 destination does not support User ID',
        mockData: {
          audienceType: 'USER_ID',
          userIdDataUserId: 'user_1',
          ownAuthDestinationsList: [
            { product: 'GOOGLE_ADS', operatingAccountId: '1', productDestinationId: '3' },
            { product: 'DISPLAY_VIDEO_PARTNER', operatingAccountId: '11', productDestinationId: '33' }
          ]
        }
      }
    ].forEach((scenario) => {
      cleanup();
      const copyMockData = setMockDataByAudienceMethod('ingest', scenario.mockData, 'own');

      runCode(copyMockData);

      require('logToConsole')(scenario.description);
    });

    assertApi('sendHttpRequest').wasNotCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
    assertApi('gtmOnFailure').wasCalled();
setup: "const Promise = require('Promise');\nconst JSON = require('JSON');\nconst\
  \ makeInteger = require('makeInteger');\nconst Object = require('Object');\nconst\
  \ callLater = require('callLater');\n\nfunction assign() {\n  const target = arguments[0];\n\
  \  for (let i = 1; i < arguments.length; i++) {\n    for (let key in arguments[i])\
  \ {\n      target[key] = arguments[i][key];\n    }\n  }\n  return target;\n}\n\n\
  const expectedDataManagerApiVersion = '1';\n\nconst mockData = {};\n\nconst cleanup\
  \ = () => {\n  mock('getAllEventData', {});\n  mock('getCookieValues', []);\n};\n\
  \nconst setMockDataByAudienceMethod = (method, objToBeMerged, auth) => {\n  if (!auth)\
  \ auth = 'stape';\n  \n  const mockDataByAuthType = {\n    stape: {\n      authFlow:\
  \ 'stape',\n      stapeAuthDestinationsList: [\n        {\n          product: 'GOOGLE_ADS',\n\
  \          operatingAccountId: '1',\n          linkedAccountId: '2',\n         \
  \ productDestinationId: '3'\n        },\n        {\n          product: 'GOOGLE_ADS',\n\
  \          operatingAccountId: '11',\n          linkedAccountId: '22',\n       \
  \   productDestinationId: '33'\n        }\n      ]\n    },\n    own: {\n      authFlow:\
  \ 'own',\n      ownAuthDestinationsList: [\n        {\n          product: 'GOOGLE_ADS',\n\
  \          operatingAccountId: '1',\n          loginAccountId: '2',\n          productDestinationId:\
  \ '3'\n        },\n        {\n          product: 'GOOGLE_ADS',\n          operatingAccountId:\
  \ '11',\n          loginAccountId: '22',\n          productDestinationId: '33'\n\
  \        }\n      ],\n      xGoogUserProject: 'xGoogUserProject'\n    }\n  };\n\
  \  \n  const baseByMethods = {\n    ingest: {\n      audienceAction: 'ingest',\n\
  \      termsOfServiceStatus: 'ACCEPTED',\n      validateOnly: false,\n      useOptimisticScenario:\
  \ false,\n      adUserData: 'CONSENT_GRANTED',\n      adPersonalization: 'CONSENT_GRANTED',\n\
  \      audienceDataEncoding: 'HEX',\n      enableAudienceDataEncryption: true,\n\
  \      gcpWrappedKeyType: 'XCHACHA20_POLY1305',\n      gcpWrappedKeyEncryptedDek:\
  \ '123',\n      gcpWrappedKeyKekUri: '123',\n      gcpWrappedKeyWipProvider: '123',\n\
  \      userMode: 'single',\n      autoMapUserData: true,\n      userDataEmailAddresses:\
  \ 'test@example.com',\n      userDataPhoneNumbers: '+15555555555',\n      addUserDataAddress:\
  \ true,\n      addressGivenName: 'test',\n      addressFamilyName: 'test',\n   \
  \   addressRegion: 'BR',\n      addressPostalCode: '10001',\n      autoMapIpData:\
  \ true,\n      ipDataIpAddress: '192.168.0.1',\n      adStorageConsent: 'optional'\n\
  \    },\n    remove: {\n      audienceAction: 'remove',\n      validateOnly: false,\n\
  \      useOptimisticScenario: false,\n      audienceDataEncoding: 'HEX',\n     \
  \ enableAudienceDataEncryption: true,\n      gcpWrappedKeyType: 'XCHACHA20_POLY1305',\n\
  \      gcpWrappedKeyEncryptedDek: '123',\n      gcpWrappedKeyKekUri: '123',\n  \
  \    gcpWrappedKeyWipProvider: '123',\n      userMode: 'single',\n      autoMapUserData:\
  \ true,\n      userDataEmailAddresses: 'test@example.com',\n      userDataPhoneNumbers:\
  \ '+15555555555',\n      addUserDataAddress: true,\n      addressGivenName: 'test',\n\
  \      addressFamilyName: 'test',\n      addressRegion: 'BR',\n      addressPostalCode:\
  \ '10001',\n      autoMapIpData: true,\n      ipDataIpAddress: '192.168.0.1',\n\
  \      adStorageConsent: 'optional'\n    }\n  };\n \n  return assign(JSON.parse(JSON.stringify(mockData)),\
  \ baseByMethods[method], mockDataByAuthType[auth] || {}, objToBeMerged || {});\n\
  };\n\nconst setGetAllEventData = (objToBeMerged) => {\n  mock('getAllEventData',\
  \ assign({\n    'x-ga-protocol_version': '2',\n    'x-ga-measurement_id': 'G-123ABC',\n\
  \    'x-ga-gtm_version': '45je55e1za200',\n    'x-ga-page_id': 1747422523211,\n\
  \    'x-ga-gcd': '13l3l3l3l1l1',\n    'x-ga-npa': '0',\n    'x-ga-dma': '0',\n \
  \   'x-ga-mp2-tag_exp':\n      '101509157~103116025~103130498~103130500~103136993~103136995~103200001~103207802~103211513~103233427~103252644~103252646~103263073~103301114~103301116',\n\
  \    client_id: 'AUJctU7H7hBB/aMuhE4pKwGu5DWDdklg5abyyyn8i/I=.1747154479',\n   \
  \ 'x-ga-ecid': '1294673677',\n    language: 'en-us',\n    screen_resolution: '1512x982',\n\
  \    event_location: { country: 'BR', region: 'SP' },\n    event_id: '101509157~103116025~103130498',\n\
  \    timestamp: 1748377016,\n    client_hints: {\n      architecture: 'arm',\n \
  \     bitness: '64',\n      full_version_list: [\n        { brand: 'Chromium', version:\
  \ '136.0.7103.93' },\n        { brand: 'Google Chrome', version: '136.0.7103.93'\
  \ },\n        { brand: 'Not.A/Brand', version: '99.0.0.0' }\n      ],\n      mobile:\
  \ false,\n      model: '',\n      platform: 'macOS',\n      platform_version: '15.2.0',\n\
  \      wow64: false,\n      brands: [\n        { brand: 'Chromium', version: '136'\
  \ },\n        { brand: 'Google Chrome', version: '136' },\n        { brand: 'Not.A/Brand',\
  \ version: '99' }\n      ]\n    },\n    'x-ga-are': '1',\n    'x-ga-mp2-frm': '0',\n\
  \    'x-ga-pscdl': 'noapi',\n    'x-ga-system_properties': { eu: [34], tu: 'BA',\
  \ ss: '1', ee: true },\n    'x-sst-system_properties': {\n      etld: 'google.com.br',\n\
  \      tft: '1747422523211',\n      lpc: '60493049',\n      navt: 'r',\n      ude:\
  \ '0',\n      sw_exp: '1',\n      request_start_time_ms: 1747422524851\n    },\n\
  \    'x-ga-request_count': 1,\n    ga_session_id: '1747422523',\n    ga_session_number:\
  \ 3,\n    'x-ga-mp2-seg': '0',\n    page_location: 'https://example.com/?test=1i23i21j3',\n\
  \    page_title: 'Example Domain',\n    event_name: 'page_view',\n    'x-ga-tfd':\
  \ 5784,\n    ip_override: '2804:14d:c096:8dd6:311c:8c00:e6c:e33',\n    user_agent:\n\
  \      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML,\
  \ like Gecko) Chrome/136.0.0.0 Safari/537.36',\n    value: 123.45,\n    currency:\
  \ 'BRL',\n    user_data: {\n      email: { 0: 'test1@example.net', 1: 'test2@example.org'\
  \ },\n      phone_number: '+55 (19) 99999-9999',\n      address: {\n        first_name:\
  \ 'test',\n        last_name: 'test',\n        postal_code: '10001',\n        country:\
  \ 'BR'\n      }\n    }\n  }, objToBeMerged || {}));\n};\n\nmock('sendHttpRequest',\
  \ (requestUrl, callback, requestOptions, requestBody) => {\n  if (typeof callback\
  \ === 'function') {\n    callback(200);\n  } else {\n    requestBody = requestOptions;\n\
  \    requestOptions = callback;\n    return Promise.create((resolve, reject) =>\
  \ {\n      resolve({ statusCode: 200 });\n    });  \n  }\n});\n\nmock('getRequestHeader',\
  \ (header) => {\n  if (header === 'trace-id') return 'expectedTraceId';\n  else\
  \ if (header === 'x-gtm-identifier') return 'expectedXGtmIdentifier';\n  else if\
  \ (header === 'x-gtm-default-domain') return 'expectedXGtmDefaultDomain';\n  else\
  \ if (header === 'x-gtm-api-key') return 'expectedXGtmApiKey';\n});\n\nmock('getGoogleAuth',\
  \ 'googleAuthToken');\n\nmock('getTimestampMillis', 1747945830456);\n\nconst multipleAudienceMembersMock\
  \ = [\n  {\n    userData: {\n      userIdentifiers: [\n        {\n          emailAddress:\n\
  \            '973dfe463ec85785f5f95af5ba3906eedb2d931c24e69824a89ea65dba4e813b'\n\
  \        },\n        {\n          phoneNumber:\n            '910a625c4ba147b544e6bd2f267e130ae14c591b6ba9c25cb8573322dedbebd0'\n\
  \        },\n        {\n          address: {\n            givenName:\n         \
  \     '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n    \
  \        familyName:\n              '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
  \            regionCode: 'BR',\n            postalCode: '10001'\n          }\n \
  \       }\n      ]\n    }\n  },\n  {\n    userData: {\n      userIdentifiers: [\n\
  \        {\n          emailAddress:\n            '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'\n\
  \        },\n        {\n          phoneNumber:\n            '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'\n\
  \        },\n        {\n          address: {\n            givenName:\n         \
  \     '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n    \
  \        familyName:\n              '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',\n\
  \            regionCode: 'US',\n            postalCode: '22222'\n          }\n \
  \       }\n      ]\n    }\n  }\n];"


___NOTES___

2026-11-23 - Change Notes:
  - Update the tag icon to the new Stape logo design.

2026-11-13 - Change Notes:
  - Add an Audience Type field (Own Google Credentials only) to send Mobile ID (`mobileData`) or User ID (`userIdData`) audience members instead of Contact information; it defaults to Contact information when unset, unknown, or when the Stape Google Connection is used, because Stape-created Customer Lists only accept contact data.
  - Add single-user fields for Mobile IDs (up to 10, truncated beyond that) and User ID; in multiple-users mode, keep only audience members carrying the selected identifier type, with their consent and destination references.
  - Validate the selected identifier per audience member (1 to 10 non-empty Mobile IDs, or a non-empty User ID) and reject User ID requests to non-Google Ads destinations, which don't support User ID lists.
  - Send encoding and encryption info only for Contact information, and hide those fields in the UI for the other Audience Types, since the API ignores them for non-UserData uploads.
  - Add unit tests for both Audience Types in single and multiple users mode, the Contact information fallback, and the new validation failures.

2026-06-16 - Change Notes:
  - Improve email address normalization for 'googlemail.com' and 'google.com' domains.
  
2026-06-03 - Change Notes:
  - Add IP address support (IpData) in single-user mode: auto-maps from event data's `ip_override` by default, with optional explicit fields `ipDataIpAddress`, `ipDataObserveStartTime`, and `ipDataObserveEndTime`.
  - Add `autoMapUserData` toggle for single-user mode to optionally suppress automatic mapping of email, phone, and address from event data (previously always auto-mapped).
  - Migrate audience member output to `CompositeData` format for both single and multiple user modes, enabling `UserData` and `IpData` to be sent together in a single audience member.
  - Update validation to check `compositeData.userData` and add `isIpDataAbsent` validator; update unit tests to reflect the new structure and add ipData validation scenarios.

2026-05-25 Change Notes:
 - Logging removal.

2026-04-13 - Change Notes:
  - Fix typo in getUrl() invocation on shouldExitEarly().

Created on 7/9/2025, 6:32:40 PM

