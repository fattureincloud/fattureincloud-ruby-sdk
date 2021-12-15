# FattureInCloud_Ruby_Sdk::IssuedDocumentPreCreateInfoDefaultValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **dn_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **ai_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **notes** | **String** | Default notes. | [optional] |
| **rivalsa** | **Float** | Default rivalsa percentage. | [optional] |
| **cassa** | **Float** | Default cassa percentage. | [optional] |
| **withholding_tax** | **Float** | Default withholding tax percentage. | [optional] |
| **withholding_tax_taxable** | **Float** | Default withholding tax taxable percentage. | [optional] |
| **other_withholding_tax** | **Float** | Default other withholding tax percentage. | [optional] |
| **use_gross_prices** | **Boolean** | Use gross price by default. | [optional] |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::IssuedDocumentPreCreateInfoDefaultValues.new(
  default_template: null,
  dn_template: null,
  ai_template: null,
  notes: null,
  rivalsa: null,
  cassa: null,
  withholding_tax: null,
  withholding_tax_taxable: null,
  other_withholding_tax: null,
  use_gross_prices: null,
  payment_method: null
)
```

