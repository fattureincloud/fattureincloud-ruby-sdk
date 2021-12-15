# FattureInCloud::Ruby::Sdk::IssuedDocumentRefersTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the linked document (can be null if the document has been deleted or other reasons). | [optional] |
| **date** | **Date** | Date of the linked document. | [optional] |
| **number** | **Integer** | Number of the linked document. | [optional] |
| **numeration** | **String** | Numeration of the linked document. | [optional] |
| **description** | **String** | Description to show. | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::IssuedDocumentRefersTo.new(
  id: null,
  date: null,
  number: null,
  numeration: null,
  description: null
)
```

