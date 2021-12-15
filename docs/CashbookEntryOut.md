# FattureInCloud_Ruby_Sdk::CashbookEntryOut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Cashbook unique identifier. |  |
| **date** | **Date** | Cashbook date. |  |
| **description** | **String** | Cashbook description. |  |
| **kind** | [**CashbookEntryKind**](CashbookEntryKind.md) |  |  |
| **type** | [**CashbookEntryType**](CashbookEntryType.md) |  |  |
| **entity_name** | **String** | Entity name. | [optional] |
| **document** | [**CashbookEntryDataDocument**](CashbookEntryDataDocument.md) |  | [optional] |
| **amount_out** | **Float** | Total amount out. | [optional] |
| **payment_account_out** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::CashbookEntryOut.new(
  id: null,
  date: null,
  description: null,
  kind: null,
  type: null,
  entity_name: null,
  document: null,
  amount_out: null,
  payment_account_out: null
)
```

