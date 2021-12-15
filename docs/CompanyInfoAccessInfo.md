# FattureInCloud_Ruby_Sdk::CompanyInfoAccessInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | [**UserCompanyRole**](UserCompanyRole.md) |  | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  | [optional] |
| **through_accountant** | **Boolean** |  | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::CompanyInfoAccessInfo.new(
  role: null,
  permissions: null,
  through_accountant: null
)
```

