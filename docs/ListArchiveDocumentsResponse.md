# FattureInCloud_Ruby_Sdk::ListArchiveDocumentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** | Current page number. | [optional] |
| **first_page_url** | **String** | First page url. | [optional] |
| **from** | **Integer** | First result of the page. | [optional] |
| **last_page** | **Integer** | Last page number. | [optional] |
| **last_page_url** | **String** | Last page url. | [optional] |
| **next_page_url** | **String** | Next page url | [optional] |
| **path** | **String** | Request path. | [optional] |
| **per_page** | **Integer** | Number of result per page. | [optional] |
| **prev_page_url** | **String** | Previous page url. | [optional] |
| **to** | **Integer** | Last result of the page. | [optional] |
| **total** | **Integer** | Total number of results | [optional] |
| **data** | [**Array&lt;ArchiveDocument&gt;**](ArchiveDocument.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::ListArchiveDocumentsResponse.new(
  current_page: null,
  first_page_url: null,
  from: null,
  last_page: null,
  last_page_url: null,
  next_page_url: null,
  path: null,
  per_page: null,
  prev_page_url: null,
  to: null,
  total: null,
  data: null
)
```

