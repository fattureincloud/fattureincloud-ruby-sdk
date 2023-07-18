# FattureInCloud_Ruby_Sdk::IssuedDocumentPaymentsListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Issued document payment item id | [optional] |
| **due_date** | **Date** | Issued document payment due date | [optional] |
| **amount** | **Float** | Issued document payment amount | [optional] |
| **status** | [**IssuedDocumentStatus**](IssuedDocumentStatus.md) |  | [optional][default to &#39;not_paid&#39;] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **paid_date** | **Date** | Issued document payment date [Only if status is paid] | [optional] |
| **ei_raw** | **Object** | Issued document payment advanced raw attributes for e-invoices | [optional] |
| **payment_terms** | [**IssuedDocumentPaymentsListItemPaymentTerms**](IssuedDocumentPaymentsListItemPaymentTerms.md) |  | [optional] |

