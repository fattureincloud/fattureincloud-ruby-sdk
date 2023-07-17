# FattureInCloud_Ruby_Sdk::IssuedDocumentEiData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vat_kind** | [**VatKind**](VatKind.md) |  | [optional] |
| **original_document_type** | [**OriginalDocumentType**](OriginalDocumentType.md) |  | [optional][default to &#39;ordine&#39;] |
| **od_number** | **String** | E-invoice original document number | [optional] |
| **od_date** | **Date** | E-invoice original document date | [optional] |
| **cig** | **String** | E-invoice CIG | [optional] |
| **cup** | **String** | E-invoice CUP | [optional] |
| **payment_method** | **String** | E-invoice payment method [required for e-invoices](see https://www.fatturapa.gov.it/export/documenti/fatturapa/v1.2.2/Rappresentazione_Tabellare_FattOrdinaria_V1.2.2.pdf for the accepted values of ModalitaPagamento) | [optional] |
| **bank_name** | **String** | E-invoice bank name | [optional] |
| **bank_iban** | **String** | E-invoice bank IBAN | [optional] |
| **bank_beneficiary** | **String** | E-invoice bank beneficiary | [optional] |
| **invoice_number** | **String** | E-invoice invoice number | [optional] |
| **invoice_date** | **Date** | E-invoice invoice date | [optional] |

