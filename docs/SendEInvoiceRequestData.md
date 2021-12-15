# FattureInCloud_Ruby_Sdk::SendEInvoiceRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cassa_type** | **String** | Value of TipoCassa used (optional, override the company default value). | [optional] |
| **withholding_tax_causal** | **String** | Value of CausalePagamento used (optional, override the company default value). | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::SendEInvoiceRequestData.new(
  cassa_type: null,
  withholding_tax_causal: null
)
```

