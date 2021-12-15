# FattureInCloud::Ruby::Sdk::PermissionsFicIssuedDocumentsDetailed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quotes** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **proformas** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **invoices** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **receipts** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **delivery_notes** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **credit_notes** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **orders** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **work_reports** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **supplier_orders** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **self_invoices** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::PermissionsFicIssuedDocumentsDetailed.new(
  quotes: null,
  proformas: null,
  invoices: null,
  receipts: null,
  delivery_notes: null,
  credit_notes: null,
  orders: null,
  work_reports: null,
  supplier_orders: null,
  self_invoices: null
)
```

