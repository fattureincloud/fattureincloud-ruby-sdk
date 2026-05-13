# FattureInCloud_Ruby_Sdk::PendingReceivedDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Pending received document id | [optional] |
| **date** | **Date** | Pending received document date | [optional] |
| **subject** | **String** | Pending received document subject | [optional] |
| **filename** | **String** | Pending received document filename | [optional] |
| **type** | [**PendingReceivedDocumentType**](PendingReceivedDocumentType.md) |  | [optional][default to &#39;agyo&#39;] |
| **attachment_url** | **String** | [Temporary] [Read Only] Pending received document url of the attached file | [optional][readonly] |
| **amount_gross** | **Float** | [Read Only] Pending received document total gross amount | [optional][readonly] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **document_type** | [**ReceivedDocumentType**](ReceivedDocumentType.md) |  | [optional][default to &#39;expense&#39;] |
| **supplier_name** | **String** | Pending received document supplier name | [optional] |
| **cost_center** | **String** | Pending received document cost center | [optional] |
| **category** | **String** | Pending received document category | [optional] |
| **other_attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | Pending received document other attachments | [optional] |
| **emssion_date** | **Date** | Pending received document emission date | [optional] |
| **payments_list** | [**Array&lt;PendingReceivedDocumentPaymentsListItem&gt;**](PendingReceivedDocumentPaymentsListItem.md) |  | [optional] |
| **amount_net** | **Float** | Pending received document total net amount | [optional] |
| **amount_vat** | **Float** | Pending received document total vat amount | [optional] |
| **import_error** | **String** | Pending received document import error | [optional] |
| **extracted_data** | [**PendingReceivedDocumentExtractedData**](PendingReceivedDocumentExtractedData.md) |  | [optional] |

