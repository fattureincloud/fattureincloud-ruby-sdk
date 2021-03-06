# FattureInCloud_Ruby_Sdk::ReceivedDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the document. | [optional] |
| **type** | [**ReceivedDocumentType**](ReceivedDocumentType.md) |  | [optional][default to &#39;expense&#39;] |
| **entity** | [**ReceivedDocumentEntity**](ReceivedDocumentEntity.md) |  | [optional] |
| **date** | **Date** | Date of the document [If not specified, today date is used]. | [optional] |
| **category** | **String** | Document category. | [optional] |
| **description** | **String** | Document description. | [optional] |
| **amount_net** | **Float** | Total net amount. | [optional] |
| **amount_vat** | **Float** | Total vat amount. | [optional] |
| **amount_withholding_tax** | **Float** | Withholding tax amount. | [optional] |
| **amount_other_withholding_tax** | **Float** | Other withholding tax amount. | [optional] |
| **amount_gross** | **Float** | [Read Only] Total gross amount. | [optional][readonly] |
| **amortization** | **Float** | Amortization value | [optional] |
| **rc_center** | **String** | Revenue center. | [optional] |
| **invoice_number** | **String** | Invoice number | [optional] |
| **is_marked** | **Boolean** |  | [optional] |
| **is_detailed** | **Boolean** |  | [optional] |
| **e_invoice** | **Boolean** | [Read Only] Indicates if this is an e-invoice. | [optional] |
| **next_due_date** | **Date** | [Read Only] Next due date. | [optional][readonly] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **tax_deductibility** | **Float** | Tax deducibility percentage. | [optional] |
| **vat_deductibility** | **Float** | Vat deducibility percentage. | [optional] |
| **items_list** | [**Array&lt;ReceivedDocumentItemsListItem&gt;**](ReceivedDocumentItemsListItem.md) |  | [optional] |
| **payments_list** | [**Array&lt;ReceivedDocumentPaymentsListItem&gt;**](ReceivedDocumentPaymentsListItem.md) |  | [optional] |
| **attachment_url** | **String** | [Read Only] Attachment url. | [optional][readonly] |
| **attachment_preview_url** | **String** | [Read Only] Attachment preview url. | [optional][readonly] |
| **attachment_token** | **String** | Uploaded attachement token. | [optional] |

