# FattureInCloud_Ruby_Sdk::IssuedDocumentItemsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | Unique identifier of the product. | [optional] |
| **code** | **String** | Product code. | [optional] |
| **name** | **String** | Product name. | [optional] |
| **description** | **String** | Product description. | [optional] |
| **qty** | **Float** | Items quantity, | [optional] |
| **measure** | **String** | Item measure. | [optional] |
| **net_price** | **Float** | Net price. | [optional] |
| **gross_price** | **Float** | Gross price. | [optional] |
| **vat** | [**VatType**](VatType.md) |  | [optional] |
| **not_taxable** | **Boolean** |  | [optional][default to false] |
| **apply_withholding_taxes** | **Boolean** | Apply withholding taxes, rivalsa and cassa. | [optional][default to true] |
| **discount** | **Float** | Discount percentual value. | [optional] |
| **discount_highlight** | **Boolean** |  | [optional][default to false] |
| **in_ddt** | **Boolean** |  | [optional][default to true] |
| **stock** | **Boolean** |  | [optional] |
| **ei_raw** | **Object** | Advanced raw attributes for e-invoices. | [optional] |

