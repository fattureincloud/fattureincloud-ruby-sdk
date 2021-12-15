# FattureInCloud::Ruby::Sdk::CashbookEntryOutData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_out** | **Float** | Total amount out. | [optional] |
| **payment_account_out** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::CashbookEntryOutData.new(
  amount_out: null,
  payment_account_out: null
)
```

