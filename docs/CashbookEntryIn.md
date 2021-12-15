# FattureInCloudSdk::CashbookEntryIn

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
| **amount_in** | **Float** | Total amount in. | [optional] |
| **payment_account_in** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloudSdk::CashbookEntryIn.new(
  id: null,
  date: null,
  description: null,
  kind: null,
  type: null,
  entity_name: null,
  document: null,
  amount_in: null,
  payment_account_in: null
)
```

