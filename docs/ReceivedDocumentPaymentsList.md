# FattureInCloud::Ruby::Sdk::ReceivedDocumentPaymentsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **amount** | **Float** | Amount of items. | [optional] |
| **due_date** | **Date** | Due date | [optional] |
| **paid_date** | **Date** | Paid date | [optional] |
| **payment_terms** | [**ReceivedDocumentPaymentTerms**](ReceivedDocumentPaymentTerms.md) |  | [optional] |
| **status** | **String** | Payment status. | [optional] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::ReceivedDocumentPaymentsList.new(
  id: null,
  amount: null,
  due_date: null,
  paid_date: null,
  payment_terms: null,
  status: null,
  payment_account: null
)
```

