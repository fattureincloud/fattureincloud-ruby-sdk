# FattureInCloud_Ruby_Sdk::CreateReceiptRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Receipt**](Receipt.md) |  | [optional] |
| **autocomplete_number** | **Boolean** | If true, the number is autocompleted progressively. | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::CreateReceiptRequest.new(
  data: null,
  autocomplete_number: null
)
```

