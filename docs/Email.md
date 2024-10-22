# FattureInCloud_Ruby_Sdk::Email

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Email id | [optional] |
| **status** | [**EmailStatus**](EmailStatus.md) |  | [optional] |
| **sent_date** | **String** | Email sent date | [optional] |
| **errors_count** | **Integer** | Email errors count | [optional] |
| **error_log** | **String** | Email errors log | [optional] |
| **from_email** | **String** | Email sender email | [optional] |
| **from_name** | **String** | Email sender name | [optional] |
| **to_email** | **String** | Email recipient email | [optional] |
| **to_name** | **String** | Email receipient name | [optional] |
| **subject** | **String** | Email subject | [optional] |
| **content** | **String** | Email content | [optional] |
| **copy_to** | **String** | Email cc | [optional] |
| **recipient_status** | [**EmailRecipientStatus**](EmailRecipientStatus.md) |  | [optional] |
| **recipient_date** | **Time** | Email recipient date | [optional] |
| **kind** | **String** | Email kind | [optional] |
| **attachments** | [**Array&lt;EmailAttachment&gt;**](EmailAttachment.md) | Email attachments | [optional] |

