# FattureInCloud::Ruby::Sdk::ReceivedDocumentItemsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **product_id** | **Integer** | Unique identifier of the product | [optional] |
| **code** | **String** | Product code. | [optional] |
| **name** | **String** | Product name. | [optional] |
| **measure** | **String** | Product measure. | [optional] |
| **net_price** | **Float** | Product net price. | [optional] |
| **category** | **String** | Product category. | [optional] |
| **qty** | **Float** | Product quantity. | [optional] |
| **vat** | [**VatType**](VatType.md) |  | [optional] |
| **stock** | **Float** | Number of items in stock | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::ReceivedDocumentItemsList.new(
  id: null,
  product_id: null,
  code: null,
  name: null,
  measure: null,
  net_price: null,
  category: null,
  qty: null,
  vat: null,
  stock: null
)
```

