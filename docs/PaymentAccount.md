# module_name::PaymentAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **name** | **String** | Payment account name. |  |
| **type** | [**PaymentAccountType**](PaymentAccountType.md) |  | [optional][default to &#39;standard&#39;] |
| **iban** | **String** | Payment account iban. | [optional] |
| **sia** | **String** | Payment account sia. | [optional] |
| **cuc** | **String** | Payment account cuc. | [optional] |
| **virtual** | **Boolean** | Determine if the payment method is virtual. | [optional] |

## Example

```ruby
require 'gem-name'

instance = module_name::PaymentAccount.new(
  id: null,
  name: Conto Banca Intesa,
  type: null,
  iban: null,
  sia: null,
  cuc: null,
  virtual: null
)
```

