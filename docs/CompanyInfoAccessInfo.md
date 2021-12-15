# FattureInCloud::Ruby::Sdk::CompanyInfoAccessInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | [**UserCompanyRole**](UserCompanyRole.md) |  | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  | [optional] |
| **through_accountant** | **Boolean** |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::CompanyInfoAccessInfo.new(
  role: null,
  permissions: null,
  through_accountant: null
)
```

