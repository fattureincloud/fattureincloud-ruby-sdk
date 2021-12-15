# module_name::ReceiptItemsListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | Item unique identifier. | [optional] |
| **amount_net** | **Float** | Item total net amount. | [optional] |
| **amount_gross** | **Float** | Item total gross amount. | [optional] |
| **category** | **String** | Item category. | [optional] |
| **vat** | [**VatType**](VatType.md) |  | [optional] |

## Example

```ruby
require 'gem-name'

instance = module_name::ReceiptItemsListItem.new(
  id: null,
  amount_net: null,
  amount_gross: null,
  category: null,
  vat: null
)
```

