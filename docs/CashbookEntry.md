# FattureInCloudSdk::CashbookEntry

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fattureincloud-ruby-sdk'

FattureInCloudSdk::CashbookEntry.openapi_one_of
# =>
# [
#   :'CashbookEntryIn',
#   :'CashbookEntryOut'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fattureincloud-ruby-sdk'

FattureInCloudSdk::CashbookEntry.build(data)
# => #<CashbookEntryIn:0x00007fdd4aab02a0>

FattureInCloudSdk::CashbookEntry.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CashbookEntryIn`
- `CashbookEntryOut`
- `nil` (if no type matches)

