# FattureInCloud_Ruby_Sdk::EmailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient_email** | **String** | Email recipient | [optional] |
| **default_sender_email** | [**EmailDataDefaultSenderEmail**](EmailDataDefaultSenderEmail.md) |  | [optional] |
| **sender_emails_list** | [**Array&lt;SenderEmail&gt;**](SenderEmail.md) | List of all emails from which the document can be sent | [optional] |
| **cc_email** | **String** | Email cc [by default is the logged company email] | [optional] |
| **subject** | **String** | Email subject | [optional] |
| **body** | **String** | Email body | [optional] |
| **document_exists** | **Boolean** | Document exists if it is not a delivery note | [optional] |
| **delivery_note_exists** | **Boolean** | Document is a delivery note | [optional] |
| **attachment_exists** | **Boolean** | Document has attachment | [optional] |
| **accompanying_invoice_exists** | **Boolean** | Document has accompanying invoice | [optional] |
| **default_attach_pdf** | **Boolean** | Attach document pdf | [optional] |

