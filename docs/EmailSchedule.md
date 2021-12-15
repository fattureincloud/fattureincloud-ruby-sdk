# FattureInCloud::Ruby::Sdk::EmailSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Float** | Sender id. Required if &#x60;sender_email&#x60; is not specified | [optional] |
| **sender_email** | **String** | Sender email. Required if &#x60;sender_id&#x60; is not specified | [optional] |
| **recipient_email** | **String** | One or more comma separated recipient emails |  |
| **subject** | **String** | Email subject |  |
| **body** | **String** | Email body |  |
| **include** | [**EmailScheduleInclude**](EmailScheduleInclude.md) |  |  |
| **attach_pdf** | **Boolean** | If set to true, documents will be sent as PDF attachments too |  |
| **send_copy** | **Boolean** | If set to true, a copy of the email will be sent to the &#x60;cc_email&#x60; specified by &#x60;Get email data&#x60; |  |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::EmailSchedule.new(
  sender_id: null,
  sender_email: null,
  recipient_email: null,
  subject: null,
  body: null,
  include: null,
  attach_pdf: null,
  send_copy: null
)
```

