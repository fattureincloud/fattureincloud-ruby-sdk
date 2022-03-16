# FattureInCloud_Ruby_Sdk::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **name** | **String** | Name of the payment method | [optional] |
| **type** | [**PaymentMethodType**](PaymentMethodType.md) |  | [optional][default to &#39;standard&#39;] |
| **is_default** | **Boolean** | Determines if this is the default payment method. | [optional] |
| **default_payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **details** | [**Array&lt;PaymentMethodDetails&gt;**](PaymentMethodDetails.md) | Method details rows | [optional] |
| **bank_iban** | **String** | Bank iban | [optional] |
| **bank_name** | **String** | Bank name | [optional] |
| **bank_beneficiary** | **String** | Bank beneficiary | [optional] |
| **ei_payment_method** | **String** | E-invoice payment method | [optional] |

