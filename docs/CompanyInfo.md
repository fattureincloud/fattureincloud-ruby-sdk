# FattureInCloudSdk::CompanyInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Company unique identifier. | [optional] |
| **name** | **String** | Company name. | [optional] |
| **email** | **String** | Company email. | [optional] |
| **type** | [**CompanyType**](CompanyType.md) |  | [optional] |
| **access_info** | [**CompanyInfoAccessInfo**](CompanyInfoAccessInfo.md) |  | [optional] |
| **plan_info** | [**CompanyInfoPlanInfo**](CompanyInfoPlanInfo.md) |  | [optional] |
| **accountant_id** | **Integer** | Accountant unique identifier. | [optional] |
| **is_accountant** | **Boolean** | Determine if the logged account is an accountant. | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloudSdk::CompanyInfo.new(
  id: 12345,
  name: Mario Rossi S.r.l.,
  email: mario@rossi-example.it,
  type: null,
  access_info: null,
  plan_info: null,
  accountant_id: null,
  is_accountant: null
)
```

