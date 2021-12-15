# FattureInCloud::Ruby::Sdk::CreateReceivedDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending_id** | **Integer** | Pending received document id of the document from which the new document is created. | [optional] |
| **data** | [**ReceivedDocument**](ReceivedDocument.md) |  |  |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::CreateReceivedDocumentRequest.new(
  pending_id: null,
  data: null
)
```

