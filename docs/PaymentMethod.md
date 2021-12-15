# FattureInCloud::Ruby::Sdk::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **name** | **String** | Name of the payment method |  |
| **type** | [**PaymentMethodType**](PaymentMethodType.md) |  | [optional][default to &#39;standard&#39;] |
| **is_default** | **Boolean** | Determines if this is the default payment method. | [optional] |
| **default_payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **details** | [**Array&lt;PaymentMethodDetails&gt;**](PaymentMethodDetails.md) | Method details rows | [optional] |
| **bank_iban** | **String** | Bank iban | [optional] |
| **bank_name** | **String** | Bank name | [optional] |
| **bank_beneficiary** | **String** | Bank beneficiary | [optional] |
| **ei_payment_method** | **String** | EInvoice payment method | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::PaymentMethod.new(
  id: null,
  name: null,
  type: null,
  is_default: null,
  default_payment_account: null,
  details: null,
  bank_iban: null,
  bank_name: null,
  bank_beneficiary: null,
  ei_payment_method: null
)
```

