# FattureInCloud_Ruby_Sdk::ReceivedDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Received document id | [optional] |
| **type** | [**ReceivedDocumentType**](ReceivedDocumentType.md) |  | [optional][default to &#39;expense&#39;] |
| **entity** | [**Entity**](Entity.md) |  | [optional] |
| **date** | **Date** | Received document date [defaults to today&#39;s date] | [optional] |
| **category** | **String** | Received document category | [optional] |
| **description** | **String** | Received document description | [optional] |
| **amount_net** | **Float** | Received document total net amount | [optional] |
| **amount_vat** | **Float** | Received document total vat amount | [optional] |
| **amount_withholding_tax** | **Float** | Received document withholding tax amount | [optional] |
| **amount_other_withholding_tax** | **Float** | Received document other withholding tax amount | [optional] |
| **amount_gross** | **Float** | [Read Only] Received document total gross amount | [optional][readonly] |
| **amortization** | **Float** | Received document amortization value | [optional] |
| **rc_center** | **String** | Received document revenue center | [optional] |
| **invoice_number** | **String** | Received document invoice number | [optional] |
| **is_marked** | **Boolean** | Received document is marked | [optional] |
| **is_detailed** | **Boolean** | Received document has items | [optional] |
| **e_invoice** | **Boolean** | [Read Only] Received document is an e-invoice | [optional] |
| **next_due_date** | **Date** | [Read Only] Received document date of the next not paid payment | [optional][readonly] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **tax_deductibility** | **Float** | Received document tax deducibility percentage | [optional] |
| **vat_deductibility** | **Float** | Received document vat deducibility percentage | [optional] |
| **items_list** | [**Array&lt;ReceivedDocumentItemsListItem&gt;**](ReceivedDocumentItemsListItem.md) |  | [optional] |
| **payments_list** | [**Array&lt;ReceivedDocumentPaymentsListItem&gt;**](ReceivedDocumentPaymentsListItem.md) |  | [optional] |
| **attachment_url** | **String** | [Temporary] [Read Only] Received document url of the attached file | [optional][readonly] |
| **attachment_preview_url** | **String** | [Temporary] [Read Only] Received document url of the attachment preview | [optional][readonly] |
| **auto_calculate** | **Boolean** | Received document total items amount and total payments amount can differ if this field is set to false | [optional] |
| **attachment_token** | **String** | [Write Only] Received document attachment token returned by POST /received_documents/attachment | [optional] |
| **locked** | **Boolean** | Received Document can&#39;t be edited | [optional] |
| **created_at** | **String** | Received document creation date | [optional] |
| **updated_at** | **String** | Received document last update date | [optional] |

