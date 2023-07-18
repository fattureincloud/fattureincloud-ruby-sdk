# FattureInCloud_Ruby_Sdk::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Payment method id | [optional] |
| **name** | **String** | Payment method name | [optional] |
| **type** | [**PaymentMethodType**](PaymentMethodType.md) |  | [optional][default to &#39;standard&#39;] |
| **is_default** | **Boolean** | Payment method is default | [optional] |
| **default_payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **details** | [**Array&lt;PaymentMethodDetails&gt;**](PaymentMethodDetails.md) | Payment method details | [optional] |
| **bank_iban** | **String** | Payment method bank iban | [optional] |
| **bank_name** | **String** | Payment method bank name | [optional] |
| **bank_beneficiary** | **String** | Payment method bank beneficiary | [optional] |
| **ei_payment_method** | **String** | E-invoice payment method | [optional] |

