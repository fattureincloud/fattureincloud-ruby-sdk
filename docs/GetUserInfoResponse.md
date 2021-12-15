# FattureInCloudSdk::GetUserInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**User**](User.md) |  | [optional] |
| **info** | [**GetUserInfoResponseInfo**](GetUserInfoResponseInfo.md) |  | [optional] |
| **email_confirmation_state** | [**GetUserInfoResponseEmailConfirmationState**](GetUserInfoResponseEmailConfirmationState.md) |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloudSdk::GetUserInfoResponse.new(
  data: null,
  info: null,
  email_confirmation_state: null
)
```

