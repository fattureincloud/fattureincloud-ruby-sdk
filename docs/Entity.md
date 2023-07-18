# FattureInCloud_Ruby_Sdk::Entity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Entity id | [optional] |
| **code** | **String** | Entity code | [optional] |
| **name** | **String** | Entity name | [optional] |
| **type** | [**EntityType**](EntityType.md) |  | [optional] |
| **first_name** | **String** | Entity first name | [optional] |
| **last_name** | **String** | Entity last name | [optional] |
| **contact_person** | **String** | Entity contact person | [optional] |
| **vat_number** | **String** | Entity vat number | [optional] |
| **tax_code** | **String** | Entity tax code | [optional] |
| **address_street** | **String** | Entitity address street | [optional] |
| **address_postal_code** | **String** | Entity address postal code | [optional] |
| **address_city** | **String** | Entity address city | [optional] |
| **address_province** | **String** | Entity address province | [optional] |
| **address_extra** | **String** | Entity address extra info | [optional] |
| **country** | **String** | Entity country | [optional] |
| **country_iso** | **String** | Entity country iso code | [optional] |
| **email** | **String** | Entity email | [optional] |
| **certified_email** | **String** | Entity certified email | [optional] |
| **phone** | **String** | Entity phone | [optional] |
| **fax** | **String** | Entity fax | [optional] |
| **notes** | **String** | Entity extra | [optional] |
| **default_payment_terms** | **Integer** | [Only for client] Client default payment terms | [optional] |
| **default_vat** | [**VatType**](VatType.md) |  | [optional] |
| **default_payment_terms_type** | [**PaymentTermsType**](PaymentTermsType.md) |  | [optional][default to &#39;standard&#39;] |
| **default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **bank_name** | **String** | [Only for client] Client bank name | [optional] |
| **bank_iban** | **String** | [Only for client] Client bank iban | [optional] |
| **bank_swift_code** | **String** | [Only for client] Client bank swift code | [optional] |
| **shipping_address** | **String** | [Only for client] Client Shipping address | [optional] |
| **e_invoice** | **Boolean** | [Only for client] Use e-invoices. | [optional] |
| **ei_code** | **String** | [Only for client] E-invoices code. | [optional] |
| **has_intent_declaration** | **Boolean** | [Only for client] Has intent declaration. | [optional] |
| **intent_declaration_protocol_number** | **String** | [Only for client] Client intent declaration protocol number | [optional] |
| **intent_declaration_protocol_date** | **Date** | [Only for client] Client intent declaration protocol date | [optional] |
| **created_at** | **String** | Entity creation date | [optional] |
| **updated_at** | **String** | Entity last update date | [optional] |

