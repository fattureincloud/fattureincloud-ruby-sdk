# FattureInCloud::Ruby::Sdk::CashbookEntryData

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

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::CashbookEntryData.new(
  id: null,
  date: null,
  description: null,
  kind: null,
  type: null,
  entity_name: null,
  document: null
)
```

