# FattureInCloud_Ruby_Sdk::GetUserInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**User**](User.md) |  | [optional] |
| **info** | [**GetUserInfoResponseInfo**](GetUserInfoResponseInfo.md) |  | [optional] |
| **email_confirmation_state** | [**GetUserInfoResponseEmailConfirmationState**](GetUserInfoResponseEmailConfirmationState.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud_ruby_sdk'

instance = FattureInCloud_Ruby_Sdk::GetUserInfoResponse.new(
  data: null,
  info: null,
  email_confirmation_state: null
)
```

