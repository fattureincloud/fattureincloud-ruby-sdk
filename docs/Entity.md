# FattureInCloud_Ruby_Sdk::Entity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **code** | **String** | Code. | [optional] |
| **name** | **String** | Name | [optional] |
| **type** | [**EntityType**](EntityType.md) |  | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **contact_person** | **String** |  | [optional] |
| **vat_number** | **String** | Vat number | [optional] |
| **tax_code** | **String** | Tax code. | [optional] |
| **address_street** | **String** | Street address. | [optional] |
| **address_postal_code** | **String** | Postal code. | [optional] |
| **address_city** | **String** | City. | [optional] |
| **address_province** | **String** | Province. | [optional] |
| **address_extra** | **String** | Address extra info. | [optional] |
| **country** | **String** | Country | [optional] |
| **email** | **String** | Email. | [optional] |
| **certified_email** | **String** | Certified email. | [optional] |
| **phone** | **String** | Phone. | [optional] |
| **fax** | **String** | Fax. | [optional] |
| **notes** | **String** | Extra notes. | [optional] |
| **default_vat** | [**VatType**](VatType.md) |  | [optional] |
| **default_payment_terms** | **Integer** | [Only for client] Default payment terms. | [optional] |
| **default_payment_terms_type** | [**DefaultPaymentTermsType**](DefaultPaymentTermsType.md) |  | [optional][default to &#39;standard&#39;] |
| **default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **bank_name** | **String** | [Only for client] Bank name. | [optional] |
| **bank_iban** | **String** | [Only for client] Iban. | [optional] |
| **bank_swift_code** | **String** | [Only for client] Bank swift code. | [optional] |
| **shipping_address** | **String** | [Only for client] Shipping address. | [optional] |
| **e_invoice** | **Boolean** | [Only for client] Use e-invoices. | [optional] |
| **ei_code** | **String** | [Only for client] E-invoices code. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

