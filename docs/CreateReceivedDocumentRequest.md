# FattureInCloud_Ruby_Sdk::CreateReceivedDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending_id** | **Integer** | Pending received document id of the document from which the new document is created. | [optional] |
| **data** | [**ReceivedDocument**](ReceivedDocument.md) |  |  |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::CreateReceivedDocumentRequest.new(
  pending_id: null,
  data: null
)
```

