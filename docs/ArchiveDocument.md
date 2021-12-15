# FattureInCloud::Ruby::Sdk::ArchiveDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Archive document unique identifier. | [optional] |
| **date** | **Date** | Archive document date. |  |
| **description** | **String** | Archive Document description. |  |
| **attachment_url** | **String** | [Read Only] Absolute url of the attached file. Authomatically set if a valid attachment token is passed via POST /archive or PUT /archive/{documentId}. | [optional][readonly] |
| **category** | **String** | Archive document category. |  |
| **attachment_token** | **String** | [Write Only]  [Required] Attachment token returned by POST /archive/attachment. Used to attach the file already uploaded. | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::ArchiveDocument.new(
  id: null,
  date: null,
  description: null,
  attachment_url: null,
  category: null,
  attachment_token: null
)
```

