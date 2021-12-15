# FattureInCloud::Ruby::Sdk::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User identifier. | [optional] |
| **name** | **String** | Full name of the user. | [optional] |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **email** | **String** | Email of the user. | [optional] |
| **hash** | **String** |  | [optional] |
| **picture** | **String** | Picture of the user. | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::User.new(
  id: 12345,
  name: Mario Rossi,
  first_name: Mario,
  last_name: Rossi,
  email: mario.rossi@example.com,
  hash: 5add29e1234532a1bf2ed7b612043029,
  picture: picture.jpg
)
```

