# FattureInCloud_Ruby_Sdk::Client

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
| **discount_highlight** | **Boolean** | Discount Highlight. | [optional] |
| **default_discount** | **Float** | Default discount. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

