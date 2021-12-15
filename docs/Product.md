# FattureInCloudSdk::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **name** | **String** | Product name. |  |
| **code** | **String** | Product code. | [optional] |
| **net_price** | **Float** | Net sale price (used if use_gross_price is false, otherwise it&#39;s competed automatically). | [optional] |
| **gross_price** | **Float** | Gross sale price (used if use_gross_price is false, otherwise it&#39;s competed automatically). | [optional] |
| **use_gross_price** | **Boolean** | Determine which price to use for calculations. | [optional] |
| **default_vat** | [**VatType**](VatType.md) |  | [optional] |
| **net_cost** | **Float** | Net cost of the product (used for received documents). | [optional] |
| **measure** | **String** | Unit of measure. | [optional] |
| **description** | **String** | Product description. | [optional] |
| **category** | **String** | Product category. | [optional] |
| **notes** | **String** | Extra notes. | [optional] |
| **in_stock** | **Boolean** | Determine if the product is in stock. | [optional] |
| **stock_initial** | **Float** | Product initial stock. | [optional] |
| **stock_current** | **Float** | [Read Only] Product current stock. | [optional][readonly] |
| **average_cost** | **Float** | Product average cost. | [optional] |
| **average_price** | **Float** | Product average price. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloudSdk::Product.new(
  id: null,
  name: null,
  code: null,
  net_price: null,
  gross_price: null,
  use_gross_price: null,
  default_vat: null,
  net_cost: null,
  measure: null,
  description: null,
  category: null,
  notes: null,
  in_stock: null,
  stock_initial: null,
  stock_current: null,
  average_cost: null,
  average_price: null,
  created_at: null,
  updated_at: null
)
```

