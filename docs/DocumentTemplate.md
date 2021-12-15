# FattureInCloud::Ruby::Sdk::DocumentTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **name** | **String** | Template name. | [optional] |
| **type** | **String** | Template type. | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::DocumentTemplate.new(
  id: 123,
  name: Light Smoke,
  type: null
)
```

