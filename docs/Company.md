# FattureInCloud_Ruby_Sdk::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Company id | [optional] |
| **name** | **String** | Company name | [optional] |
| **type** | [**CompanyType**](CompanyType.md) |  | [optional] |
| **access_token** | **String** | Company authentication token for this company. [Only if type&#x3D;company] | [optional] |
| **controlled_companies** | [**Array&lt;ControlledCompany&gt;**](ControlledCompany.md) | Company list of controlled companies [Only if type&#x3D;accountant] | [optional] |
| **connection_id** | **Integer** | Company connection id | [optional] |
| **tax_code** | **String** | Company tax code | [optional] |

