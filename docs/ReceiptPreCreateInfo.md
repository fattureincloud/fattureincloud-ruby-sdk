# FattureInCloud_Ruby_Sdk::ReceiptPreCreateInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **numerations** | **Object** | Next number by year, receipt type and numeration name. |  |
| **numerations_list** | **Array&lt;String&gt;** | List of series used in the past. |  |
| **rc_centers_list** | **Array&lt;String&gt;** | List of revenue centers used in the past. |  |
| **payment_accounts_list** | [**Array&lt;PaymentAccount&gt;**](PaymentAccount.md) | User payment accounts list. |  |
| **categories_list** | **Array&lt;String&gt;** | List of categories used in the past. |  |
| **vat_types_list** | [**Array&lt;VatType&gt;**](VatType.md) | List of user vat types with the default 22%, 10%, 4% and 0% vats. |  |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::ReceiptPreCreateInfo.new(
  numerations: null,
  numerations_list: null,
  rc_centers_list: null,
  payment_accounts_list: null,
  categories_list: null,
  vat_types_list: null
)
```

