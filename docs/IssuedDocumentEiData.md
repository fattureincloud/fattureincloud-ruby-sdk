# FattureInCloud_Ruby_Sdk::IssuedDocumentEiData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vat_kind** | [**VatKind**](VatKind.md) |  | [optional] |
| **original_document_type** | [**OriginalDocumentType**](OriginalDocumentType.md) |  | [optional][default to &#39;ordine&#39;] |
| **od_number** | **String** | Original document number. | [optional] |
| **od_date** | **Date** | Original document date. | [optional] |
| **cig** | **String** | CIG. | [optional] |
| **cup** | **String** | CUP. | [optional] |
| **payment_method** | **String** | Payment method (see https://www.fatturapa.gov.it/export/documenti/fatturapa/v1.2.1/Rappresentazione-tabellare-fattura-ordinaria.pdf for the accepted values of ModalitaPagamento). | [optional] |
| **bank_name** | **String** | Bank name. | [optional] |
| **bank_iban** | **String** | IBAN. | [optional] |
| **bank_beneficiary** | **String** | Bank beneficiary. | [optional] |
| **invoice_number** | **String** | Invoice number. | [optional] |
| **invoice_date** | **Date** | Invoice date. | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::IssuedDocumentEiData.new(
  vat_kind: null,
  original_document_type: null,
  od_number: null,
  od_date: null,
  cig: null,
  cup: null,
  payment_method: null,
  bank_name: null,
  bank_iban: null,
  bank_beneficiary: null,
  invoice_number: null,
  invoice_date: null
)
```

