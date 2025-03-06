# FattureInCloud_Ruby_Sdk::Client

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Client id | [optional] |
| **code** | **String** | Client code | [optional] |
| **name** | **String** | Client name | [optional] |
| **type** | [**ClientType**](ClientType.md) |  | [optional] |
| **first_name** | **String** | Client first name | [optional] |
| **last_name** | **String** | Client last name | [optional] |
| **contact_person** | **String** | Client contact person | [optional] |
| **vat_number** | **String** | Client vat number | [optional] |
| **tax_code** | **String** | Client tax code | [optional] |
| **address_street** | **String** | Client address street | [optional] |
| **address_postal_code** | **String** | Client address postal code | [optional] |
| **address_city** | **String** | Client address city | [optional] |
| **address_province** | **String** | Client address province | [optional] |
| **address_extra** | **String** | Client address extra info | [optional] |
| **country** | **String** | Client country | [optional] |
| **country_iso** | **String** | Client country iso code | [optional] |
| **email** | **String** | Client email | [optional] |
| **certified_email** | **String** | Client certified email | [optional] |
| **phone** | **String** | Client phone | [optional] |
| **fax** | **String** | Client fax | [optional] |
| **notes** | **String** | Client extra | [optional] |
| **default_vat** | [**VatType**](VatType.md) |  | [optional] |
| **default_payment_terms** | **Integer** | Client default payment terms | [optional] |
| **default_payment_terms_type** | [**PaymentTermsType**](PaymentTermsType.md) |  | [optional][default to &#39;standard&#39;] |
| **default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **bank_name** | **String** | Client bank name | [optional] |
| **bank_iban** | **String** | Client bank iban | [optional] |
| **bank_swift_code** | **String** | Client bank swift code | [optional] |
| **shipping_address** | **String** | Client shipping address | [optional] |
| **e_invoice** | **Boolean** | Use e-invoices for this entity | [optional] |
| **discount_highlight** | **Boolean** | Highlight Discount | [optional] |
| **ei_code** | **String** | Client e-invoice code  | [optional] |
| **default_discount** | **Float** | Client default discount | [optional] |
| **has_intent_declaration** | **Boolean** | Client has intent declaration | [optional] |
| **intent_declaration_protocol_number** | **String** | Client intent declaration protocol number | [optional] |
| **intent_declaration_protocol_date** | **Date** | Client intent declaration protocol date | [optional] |
| **price_list_id** | **String** | Price list id | [optional] |
| **created_at** | **String** | Client creation date | [optional] |
| **updated_at** | **String** | Client last update date | [optional] |

