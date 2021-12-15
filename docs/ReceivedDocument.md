# FattureInCloud_Ruby_Sdk::ReceivedDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the document. | [optional] |
| **type** | [**ReceivedDocumentType**](ReceivedDocumentType.md) |  | [optional][default to &#39;expense&#39;] |
| **entity** | [**ReceivedDocumentEntity**](ReceivedDocumentEntity.md) |  |  |
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
| **items_list** | [**Array&lt;ReceivedDocumentItemsList&gt;**](ReceivedDocumentItemsList.md) |  | [optional] |
| **payments_list** | [**Array&lt;ReceivedDocumentPaymentsList&gt;**](ReceivedDocumentPaymentsList.md) |  | [optional] |
| **attachment_url** | **String** | [Read Only] Attachment url. | [optional][readonly] |
| **attachment_preview_url** | **String** | [Read Only] Attachment preview url. | [optional][readonly] |
| **attachment_token** | **String** | Uploaded attachement token. | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::ReceivedDocument.new(
  id: null,
  type: null,
  entity: null,
  date: null,
  category: null,
  description: null,
  amount_net: null,
  amount_vat: null,
  amount_withholding_tax: null,
  amount_other_withholding_tax: null,
  amount_gross: null,
  amortization: null,
  rc_center: null,
  invoice_number: null,
  is_marked: null,
  is_detailed: null,
  e_invoice: null,
  next_due_date: null,
  currency: null,
  tax_deductibility: null,
  vat_deductibility: null,
  items_list: null,
  payments_list: null,
  attachment_url: null,
  attachment_preview_url: null,
  attachment_token: null
)
```

