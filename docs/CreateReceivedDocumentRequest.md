# module_name::CreateReceivedDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending_id** | **Integer** | Pending received document id of the document from which the new document is created. | [optional] |
| **data** | [**ReceivedDocument**](ReceivedDocument.md) |  |  |

## Example

```ruby
require 'gem-name'

instance = module_name::CreateReceivedDocumentRequest.new(
  pending_id: null,
  data: null
)
```

