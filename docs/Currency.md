# module_name::Currency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Currency code. | [optional] |
| **symbol** | **String** | Currency symbol. | [optional] |
| **exchange_rate** | **String** | Currency exchange rate (EUR to this). | [optional] |
| **html_symbol** | **String** | Currency html code. | [optional] |

## Example

```ruby
require 'gem-name'

instance = module_name::Currency.new(
  id: EUR,
  symbol: €,
  exchange_rate: 1,
  html_symbol: EUR
)
```

