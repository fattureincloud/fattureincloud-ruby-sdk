# module_name::IssuedDocumentPaymentsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **due_date** | **Date** | Due date. | [optional] |
| **amount** | **Float** | Payment amount. | [optional] |
| **status** | [**IssuedDocumentStatus**](IssuedDocumentStatus.md) |  | [optional][default to &#39;not_paid&#39;] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **paid_date** | **Date** | Payment date. [Only if status is paid] | [optional] |
| **ei_raw** | **Object** | Advanced raw attributes for e-invoices. | [optional] |

## Example

```ruby
require 'gem-name'

instance = module_name::IssuedDocumentPaymentsList.new(
  due_date: Tue Apr 03 00:00:00 GMT 2018,
  amount: 1.45,
  status: null,
  payment_account: null,
  paid_date: Tue Apr 03 00:00:00 GMT 2018,
  ei_raw: null
)
```

