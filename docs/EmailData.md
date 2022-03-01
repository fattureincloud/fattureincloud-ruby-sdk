# FattureInCloud_Ruby_Sdk::EmailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient_email** | **String** | Recipient&#39;s email | [optional] |
| **default_sender_email** | [**EmailDataDefaultSenderEmail**](EmailDataDefaultSenderEmail.md) |  | [optional] |
| **sender_emails_list** | [**Array&lt;SenderEmail&gt;**](SenderEmail.md) | List of all emails from which the document can be sent | [optional] |
| **cc_email** | **String** | By default is the logged company email. This is the email address to which a copy will be sent. | [optional] |
| **subject** | **String** | Email subject | [optional] |
| **body** | **String** | Email body | [optional] |
| **document_exists** | **Boolean** | If the document is not a delivery note, this flag will be set to true | [optional] |
| **delivery_note_exists** | **Boolean** | If the document is a delivery note, this flag will be set to true | [optional] |
| **attachment_exists** | **Boolean** | If the document has one or more attachments, this flag will be set to true | [optional] |
| **accompanying_invoice_exists** | **Boolean** | If an accompanying invoice exists, this flag will be set to true | [optional] |
| **default_attach_pdf** | **Boolean** | If a pdf is attached, this flag will be set to true | [optional] |

