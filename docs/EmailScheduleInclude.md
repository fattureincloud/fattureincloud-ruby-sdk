# FattureInCloud::Ruby::Sdk::EmailScheduleInclude

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | **Boolean** | If set to true, the email will have a button to view the document |  |
| **delivery_note** | **Boolean** | If set to true, the email will have a button to view the delivery note |  |
| **attachment** | **Boolean** | If set to true, the email will have a button to view the attachment |  |
| **accompanying_invoice** | **Boolean** | If set to true, the email will have a button to view the accompanying invoice |  |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::EmailScheduleInclude.new(
  document: null,
  delivery_note: null,
  attachment: null,
  accompanying_invoice: null
)
```

