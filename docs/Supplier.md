# FattureInCloud_Ruby_Sdk::Supplier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **code** | **String** | Supplier code. | [optional] |
| **name** | **String** | Supplier name. |  |
| **type** | [**SupplierType**](SupplierType.md) |  | [optional] |
| **first_name** | **String** | Supplier first name. | [optional] |
| **last_name** | **String** | Supplier last name. | [optional] |
| **contact_person** | **String** |  | [optional] |
| **vat_number** | **String** | Supplier vat number. | [optional] |
| **tax_code** | **String** | Supplier tax code. | [optional] |
| **address_street** | **String** | Supplier street address. | [optional] |
| **address_postal_code** | **String** | Supplier postal code. | [optional] |
| **address_city** | **String** | Supplier city. | [optional] |
| **address_province** | **String** | Supplier province. | [optional] |
| **address_extra** | **String** | Supplier address extra info. | [optional] |
| **country** | **String** | Supplier country. | [optional][default to &#39;Italia&#39;] |
| **email** | **String** | Supplier email. | [optional] |
| **certified_email** | **String** | Supplier certified email. | [optional] |
| **phone** | **String** | Supplier phone. | [optional] |
| **fax** | **String** | Supplier fax. | [optional] |
| **notes** | **String** | Supplier extra notes. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::Supplier.new(
  id: null,
  code: 123,
  name: Rossi S.r.l.,
  type: null,
  first_name: null,
  last_name: null,
  contact_person: null,
  vat_number: IT01234567890,
  tax_code: RSSMRA44A12E890Q,
  address_street: Via dei tigli, 12,
  address_postal_code: 24010,
  address_city: Bergamo,
  address_province: BG,
  address_extra: null,
  country: Italia,
  email: mario.rossi@example.it,
  certified_email: mario.rossi@pec.example.it,
  phone: null,
  fax: null,
  notes: null,
  created_at: null,
  updated_at: null
)
```

