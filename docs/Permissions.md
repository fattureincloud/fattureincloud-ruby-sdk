# module_name::Permissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fic_situation** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_clients** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_suppliers** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_products** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_issued_documents** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_received_documents** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_receipts** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_calendar** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_archive** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_taxes** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_stock** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_cashbook** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_settings** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_emails** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_export** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_import_bankstatements** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_import_clients_suppliers** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_import_issued_documents** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_import_products** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_recurring** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_riba** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **dic_employees** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **dic_settings** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **dic_timesheet** | [**PermissionLevel**](PermissionLevel.md) |  | [optional] |
| **fic_issued_documents_detailed** | [**PermissionsFicIssuedDocumentsDetailed**](PermissionsFicIssuedDocumentsDetailed.md) |  | [optional] |

## Example

```ruby
require 'gem-name'

instance = module_name::Permissions.new(
  fic_situation: null,
  fic_clients: null,
  fic_suppliers: null,
  fic_products: null,
  fic_issued_documents: null,
  fic_received_documents: null,
  fic_receipts: null,
  fic_calendar: null,
  fic_archive: null,
  fic_taxes: null,
  fic_stock: null,
  fic_cashbook: null,
  fic_settings: null,
  fic_emails: null,
  fic_export: null,
  fic_import_bankstatements: null,
  fic_import_clients_suppliers: null,
  fic_import_issued_documents: null,
  fic_import_products: null,
  fic_recurring: null,
  fic_riba: null,
  dic_employees: null,
  dic_settings: null,
  dic_timesheet: null,
  fic_issued_documents_detailed: null
)
```

