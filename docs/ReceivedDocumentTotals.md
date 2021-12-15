# FattureInCloud::Ruby::Sdk::ReceivedDocumentTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_net** | **Float** | Total net amount. |  |
| **amount_vat** | **Float** | Total vat amount. |  |
| **amount_gross** | **Float** | Total gross amount. |  |
| **amount_withholding_tax** | **Float** | Total withholding tax amount. | [optional] |
| **amount_other_withholding_tax** | **Float** | Total other withholding tax amount. | [optional] |
| **amount_due** | **Float** | Total amount due. |  |
| **payments_sum** | **Float** | Payments sum. |  |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::ReceivedDocumentTotals.new(
  amount_net: null,
  amount_vat: null,
  amount_gross: null,
  amount_withholding_tax: null,
  amount_other_withholding_tax: null,
  amount_due: null,
  payments_sum: null
)
```

