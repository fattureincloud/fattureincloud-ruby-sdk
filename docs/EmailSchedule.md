# FattureInCloud_Ruby_Sdk::EmailSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | Sender id. Required if &#x60;sender_email&#x60; is not specified | [optional] |
| **sender_email** | **String** | Sender email. Required if &#x60;sender_id&#x60; is not specified | [optional] |
| **recipient_email** | **String** | One or more comma separated recipient emails | [optional] |
| **subject** | **String** | Email subject | [optional] |
| **body** | **String** | Email body | [optional] |
| **include** | [**EmailScheduleInclude**](EmailScheduleInclude.md) |  | [optional] |
| **attach_pdf** | **Boolean** | If set to true, documents will be sent as PDF attachments too | [optional] |
| **send_copy** | **Boolean** | If set to true, a copy of the email will be sent to the &#x60;cc_email&#x60; specified by &#x60;Get email data&#x60; | [optional] |

