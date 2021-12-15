# module_name::ReceivedDocumentInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_values** | [**ReceivedDocumentInfoDefaultValues**](ReceivedDocumentInfoDefaultValues.md) |  | [optional] |
| **items_default_values** | [**ReceivedDocumentInfoItemsDefaultValues**](ReceivedDocumentInfoItemsDefaultValues.md) |  | [optional] |
| **countries_list** | **Array&lt;String&gt;** |  | [optional] |
| **currencies_list** | [**Array&lt;Currency&gt;**](Currency.md) |  | [optional] |
| **categories_list** | **Array&lt;String&gt;** |  | [optional] |
| **payment_accounts_list** | [**Array&lt;PaymentAccount&gt;**](PaymentAccount.md) |  | [optional] |
| **vat_types_list** | [**Array&lt;VatType&gt;**](VatType.md) |  | [optional] |

## Example

```ruby
require 'gem-name'

instance = module_name::ReceivedDocumentInfo.new(
  default_values: null,
  items_default_values: null,
  countries_list: null,
  currencies_list: null,
  categories_list: null,
  payment_accounts_list: null,
  vat_types_list: null
)
```

