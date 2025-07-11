# Google Customer Match Tag for Google Tag Manager Server-Side

The **Google Customer Match (Audiences) Tag** for Google Tag Manager Server-Side enables you to send audience data to Google advertising products using the [Data Manager API](https://developers.google.com/data-manager/api). This allows you to manage your Customer Match lists by adding or removing users programmatically.

This tag supports two primary actions:

* **Add to Audience**: Ingests user data into a specified audience list.

* **Remove from Audience**: Removes user data from a specified audience list.

## How to use the Google Customer Match Tag

1. Add the **Google Customer Match (Audiences) Tag** to your server container in GTM.

2. Select the **Action** you want to perform (`Add to Audience` or `Remove from Audience`).

3. Configure the **Destination Accounts and Audiences** by providing the `Operating Account ID`, `Linked Account ID`, and `Audience ID`.

4. Configure the **Audience Members** section with the user data you want to send. You can provide data for a single user or multiple users in a batch. The tag will automatically hash user identifiers (like email and phone) using SHA256 if they are not already hashed.

5. Add a trigger.

## Parameters

### Main Configuration

* **Action**: Choose whether to `Add to Audience` or `Remove from Audience`.

* **Authentication Type**: Currently supports **Stape Google Connection**. You can enable it in your Stape container settings under the "Connections" section.

* **Destination Accounts and Audiences**: Specify the Google Ads accounts and audiences to target.

  * **Operating Account ID**: The ID of the Google Ads account that will receive the audience data.

  * **Linked Account ID**: The ID of the account for which the link between the Data Partner (Stape) and the Advertiser was established. If the link is with the same account that receives the data, this will be the same as the Operating Account ID.

  * **Audience ID**: The ID of the specific audience you want to modify.

### User Data & Identifiers

The tag can be configured to send data for a single user or for multiple users at once.

* **User Mode**:

  * **Single User**: Manually input identifiers for one user through the UI fields. The tag can fall back to data from the GA4 Event Data stream (`user_data` object) if fields are left blank.

  * **Multiple Users**: Provide a pre-formatted array of audience members. This is useful for bulk uploads.

* **User Identifiers**:

  * **User Data**: Includes Email Address(es), Phone Number(s), and full address details (Given Name, Family Name, Region, Postal Code). The tag automatically normalizes and hashes this data if provided in clear text. If these fields are left blank in the tag configuration, the tag will attempt to use fallback values from the incoming GA4 event data (`user_data` object). To prevent the tag from using these fallback values, you can pass an `undefined` variable to the corresponding field. The fallback order is:

    * **Email**: `user_data.email` -> `user_data.email_address` -> `user_data.sha256_email` -> `user_data.sha256_email_address`

    * **Phone**: `user_data.phone` -> `user_data.phone_number` -> `user_data.sha256_phone_number`

    * **Given Name**: `user_data.address.first_name` -> `user_data.address.sha256_first_name`

    * **Family Name**: `user_data.address.last_name` -> `user_data.address.sha256_last_name`

    * **Region**: `user_data.address.country`

    * **Postal Code**: `user_data.address.postal_code`

  * **Mobile IDs**: A list of mobile device IDs (Advertising ID/IDFA).

  * **PAIR IDs**: Cleanroom-provided PII data for PAIR user lists.

### Data Formatting & Encryption

* **Audience Data Encoding**: Specify the encoding (`HEX` or `BASE64`) if you are providing pre-hashed user identifiers. If you provide raw data, the tag defaults to `HEX` after hashing.

* **Audience Data Encryption**: If enabled, you must provide Google Cloud Platform wrapped key information (`Key Type`, `Workload Identity pool provider`, `KEK Uri`, and `Encrypted DEK`) for end-to-end encryption.

### Advanced Options

* **Validate Only**: If `true`, the request is validated by the API but not executed. This is useful for debugging.

* **Use Optimistic Scenario**: If `true`, the tag fires `gtmOnSuccess()` immediately without waiting for a response from the API. This speeds up container response time but may hide downstream errors.

* **Request-level Consent**: Apply `adUserData` and `adPersonalization` consent statuses to all users in the request. This can be overridden at the user level when using the "Multiple Users" mode.

* **Consent Settings**: Prevent the tag from firing unless the necessary ad storage consent is granted by the user.

* **Logging**: Configure console and/or BigQuery logging for debugging and monitoring requests and responses.

## Open Source

The **Google Customer Match Tag for GTM Server-Side** is developed and maintained by the [Stape Team](https://stape.io/) under the Apache 2.0 license.