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

