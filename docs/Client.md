# FattureInCloudSdk::Client

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **code** | **String** | Client code. | [optional] |
| **name** | **String** | Client name |  |
| **type** | [**ClientType**](ClientType.md) |  | [optional] |
| **first_name** | **String** | Client first name. | [optional] |
| **last_name** | **String** | Client last name. | [optional] |
| **contact_person** | **String** |  | [optional] |
| **vat_number** | **String** | Client vat number | [optional] |
| **tax_code** | **String** | Client tax code. | [optional] |
| **address_street** | **String** | Client street address. | [optional] |
| **address_postal_code** | **String** | Client postal code. | [optional] |
| **address_city** | **String** | Client city. | [optional] |
| **address_province** | **String** | Client province. | [optional] |
| **address_extra** | **String** | Client address extra info. | [optional] |
| **country** | **String** | Client country | [optional][default to &#39;Italia&#39;] |
| **email** | **String** | Client email. | [optional] |
| **certified_email** | **String** | Client certified email. | [optional] |
| **phone** | **String** | Client phone. | [optional] |
| **fax** | **String** | Client fax. | [optional] |
| **notes** | **String** | Extra notes. | [optional] |
| **default_vat** | [**VatType**](VatType.md) |  | [optional] |
| **default_payment_terms** | **Integer** |  | [optional] |
| **default_payment_terms_type** | [**DefaultPaymentTermsType**](DefaultPaymentTermsType.md) |  | [optional][default to &#39;standard&#39;] |
| **default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **bank_name** | **String** | Client bank name. | [optional] |
| **bank_iban** | **String** | Client iban. | [optional] |
| **bank_swift_code** | **String** | Client bank swift code. | [optional] |
| **shipping_address** | **String** | Client shipping address. | [optional] |
| **e_invoice** | **Boolean** | Use e-invoices for this entity | [optional][default to false] |
| **ei_code** | **String** | E-invoice code | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloudSdk::Client.new(
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
  default_vat: null,
  default_payment_terms: 30,
  default_payment_terms_type: null,
  default_payment_method: null,
  bank_name: null,
  bank_iban: null,
  bank_swift_code: null,
  shipping_address: null,
  e_invoice: null,
  ei_code: null,
  created_at: null,
  updated_at: null
)
```

