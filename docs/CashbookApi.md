# FattureInCloud::Ruby::Sdk::CashbookApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cashbook_entry**](CashbookApi.md#create_cashbook_entry) | **POST** /c/{company_id}/cashbook | Create Cashbook Entry |
| [**delete_cashbook_entry**](CashbookApi.md#delete_cashbook_entry) | **DELETE** /c/{company_id}/cashbook/{document_id} | Delete Cashbook Entry |
| [**get_cashbook_entry**](CashbookApi.md#get_cashbook_entry) | **GET** /c/{company_id}/cashbook/{document_id} | Get Cashbook Entry |
| [**list_cashbook_entries**](CashbookApi.md#list_cashbook_entries) | **GET** /c/{company_id}/cashbook | List Cashbook Entries |
| [**modify_cashbook_entry**](CashbookApi.md#modify_cashbook_entry) | **PUT** /c/{company_id}/cashbook/{document_id} | Modify Cashbook Entry |


## create_cashbook_entry

> <CreateCashbookEntryResponse> create_cashbook_entry(company_id, opts)

Create Cashbook Entry

Creates a new cashbook entry.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::CashbookApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_cashbook_entry_request: FattureInCloud::Ruby::Sdk::CreateCashbookEntryRequest.new # CreateCashbookEntryRequest | Cashbook entry. 
}

begin
  # Create Cashbook Entry
  result = api_instance.create_cashbook_entry(company_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->create_cashbook_entry: #{e}"
end
```

#### Using the create_cashbook_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCashbookEntryResponse>, Integer, Hash)> create_cashbook_entry_with_http_info(company_id, opts)

```ruby
begin
  # Create Cashbook Entry
  data, status_code, headers = api_instance.create_cashbook_entry_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCashbookEntryResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->create_cashbook_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_cashbook_entry_request** | [**CreateCashbookEntryRequest**](CreateCashbookEntryRequest.md) | Cashbook entry.  | [optional] |

### Return type

[**CreateCashbookEntryResponse**](CreateCashbookEntryResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cashbook_entry

> delete_cashbook_entry(company_id, document_id)

Delete Cashbook Entry

Deletes the specified cashbook entry.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::CashbookApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Cashbook Entry
  api_instance.delete_cashbook_entry(company_id, document_id)
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->delete_cashbook_entry: #{e}"
end
```

#### Using the delete_cashbook_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cashbook_entry_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Cashbook Entry
  data, status_code, headers = api_instance.delete_cashbook_entry_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->delete_cashbook_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cashbook_entry

> <GetCashbookEntryResponse> get_cashbook_entry(company_id, document_id, opts)

Get Cashbook Entry

Gets the specified cashbook entry.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::CashbookApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Cashbook Entry
  result = api_instance.get_cashbook_entry(company_id, document_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->get_cashbook_entry: #{e}"
end
```

#### Using the get_cashbook_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCashbookEntryResponse>, Integer, Hash)> get_cashbook_entry_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Cashbook Entry
  data, status_code, headers = api_instance.get_cashbook_entry_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCashbookEntryResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->get_cashbook_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**GetCashbookEntryResponse**](GetCashbookEntryResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cashbook_entries

> <ListCashbookEntriesResponse> list_cashbook_entries(company_id, date_from, date_to, opts)

List Cashbook Entries

Lists the cashbook entries.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::CashbookApi.new
company_id = 12345 # Integer | The ID of the company.
date_from = 'date_from_example' # String | Start date.
date_to = 'date_to_example' # String | End date.
opts = {
  year: 56, # Integer | Filter cashbook by year.
  type: 'all', # String | Filter cashbook by type.
  payment_account_id: 56 # Integer | Filter by payment account.
}

begin
  # List Cashbook Entries
  result = api_instance.list_cashbook_entries(company_id, date_from, date_to, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->list_cashbook_entries: #{e}"
end
```

#### Using the list_cashbook_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCashbookEntriesResponse>, Integer, Hash)> list_cashbook_entries_with_http_info(company_id, date_from, date_to, opts)

```ruby
begin
  # List Cashbook Entries
  data, status_code, headers = api_instance.list_cashbook_entries_with_http_info(company_id, date_from, date_to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCashbookEntriesResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->list_cashbook_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **date_from** | **String** | Start date. |  |
| **date_to** | **String** | End date. |  |
| **year** | **Integer** | Filter cashbook by year. | [optional] |
| **type** | **String** | Filter cashbook by type. | [optional] |
| **payment_account_id** | **Integer** | Filter by payment account. | [optional] |

### Return type

[**ListCashbookEntriesResponse**](ListCashbookEntriesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_cashbook_entry

> <ModifyCashbookEntryResponse> modify_cashbook_entry(company_id, document_id, opts)

Modify Cashbook Entry

Modifies the specified cashbook entry.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::CashbookApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  modify_cashbook_entry_request: FattureInCloud::Ruby::Sdk::ModifyCashbookEntryRequest.new # ModifyCashbookEntryRequest | Cashbook Entry
}

begin
  # Modify Cashbook Entry
  result = api_instance.modify_cashbook_entry(company_id, document_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->modify_cashbook_entry: #{e}"
end
```

#### Using the modify_cashbook_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyCashbookEntryResponse>, Integer, Hash)> modify_cashbook_entry_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Modify Cashbook Entry
  data, status_code, headers = api_instance.modify_cashbook_entry_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyCashbookEntryResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling CashbookApi->modify_cashbook_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **modify_cashbook_entry_request** | [**ModifyCashbookEntryRequest**](ModifyCashbookEntryRequest.md) | Cashbook Entry | [optional] |

### Return type

[**ModifyCashbookEntryResponse**](ModifyCashbookEntryResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

