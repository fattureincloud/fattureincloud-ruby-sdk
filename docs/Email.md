# FattureInCloud_Ruby_Sdk::Email

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Email unique identifier. | [optional] |
| **status** | [**EmailStatus**](EmailStatus.md) |  | [optional] |
| **sent_date** | **Time** | Email sent date. | [optional] |
| **errors_count** | **Integer** | Errors count. | [optional] |
| **error_log** | **String** | Error log. | [optional] |
| **from_email** | **String** | Sender email. | [optional] |
| **from_name** | **String** | Sender name. | [optional] |
| **to_email** | **String** | Recipient email. | [optional] |
| **to_name** | **String** | Receipient email. | [optional] |
| **subject** | **String** | Email subject. | [optional] |
| **content** | **String** | Email content. | [optional] |
| **copy_to** | **String** |  | [optional] |
| **recipient_status** | [**EmailRecipientStatus**](EmailRecipientStatus.md) |  | [optional] |
| **recipient_date** | **Time** |  | [optional] |
| **kind** | **String** | Email kind. | [optional] |
| **attachments** | [**Array&lt;EmailAttachment&gt;**](EmailAttachment.md) | Email attachments. | [optional] |

