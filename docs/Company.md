# FattureInCloud_Ruby_Sdk::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Company unique identifier. | [optional] |
| **name** | **String** | Company name. | [optional] |
| **type** | [**CompanyType**](CompanyType.md) |  | [optional] |
| **access_token** | **String** | CompanyAuthentication token for this company. [Only if type&#x3D;company] | [optional] |
| **controlled_companies** | [**Array&lt;Company&gt;**](Company.md) | List of controlled companies. [Only if type&#x3D;accountant] | [optional] |
| **connection_id** | **Float** | Company connection id. | [optional] |
| **tax_code** | **String** | Tax code. | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::Company.new(
  id: 12345,
  name: Rossi S.r.l.,
  type: null,
  access_token: fd015011d2dbf8a9d38e810b325b11b56d02e51688e5261a245933b8e677b8b44ff5f0fe5ccaaf1d7157fa13ca72ab62b6183db0667a576a0e19164801c18c4fd81273fc1f95bf460b869015cf99acba,
  controlled_companies: null,
  connection_id: null,
  tax_code: null
)
```

