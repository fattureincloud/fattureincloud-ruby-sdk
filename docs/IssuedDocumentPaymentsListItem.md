# FattureInCloud_Ruby_Sdk::IssuedDocumentPaymentsListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **due_date** | **Date** | Due date. | [optional] |
| **amount** | **Float** | Payment amount. | [optional] |
| **status** | [**IssuedDocumentStatus**](IssuedDocumentStatus.md) |  | [optional][default to &#39;not_paid&#39;] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **paid_date** | **Date** | Payment date. [Only if status is paid] | [optional] |
| **ei_raw** | **Object** | Advanced raw attributes for e-invoices. | [optional] |
| **payment_terms** | [**IssuedDocumentPaymentsListItemPaymentTerms**](IssuedDocumentPaymentsListItemPaymentTerms.md) |  | [optional] |

