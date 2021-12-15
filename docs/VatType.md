# FattureInCloud_Ruby_Sdk::VatType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **value** | **Float** | [Read Only] Percentual value. |  |
| **description** | **String** | Short description. | [optional] |
| **notes** | **String** | Long description and notes shown in documents. | [optional] |
| **e_invoice** | **Boolean** | Usable for e-invoices. | [optional] |
| **ei_type** | **String** | E-invoice type (natura). | [optional] |
| **ei_description** | **String** | E-invoice description. | [optional] |
| **editable** | **Boolean** | [Read Only] Determine if this vat type is editable. | [optional][readonly][default to true] |
| **is_disabled** | **Boolean** | Determine if the vat type is disabled. | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::VatType.new(
  id: null,
  value: 22,
  description: Non imponibile art. 123,
  notes: IVA non imponibile ai sensi dell&#39;articolo 123, comma 2,
  e_invoice: null,
  ei_type: 2,
  ei_description: null,
  editable: null,
  is_disabled: null
)
```

