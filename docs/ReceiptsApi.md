# FattureInCloud_Ruby_Sdk::ReceiptsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_receipt**](ReceiptsApi.md#create_receipt) | **POST** /c/{company_id}/receipts | Create Receipt |
| [**delete_receipt**](ReceiptsApi.md#delete_receipt) | **DELETE** /c/{company_id}/receipts/{document_id} | Delete Receipt |
| [**get_receipt**](ReceiptsApi.md#get_receipt) | **GET** /c/{company_id}/receipts/{document_id} | Get Receipt |
| [**get_receipt_pre_create_info**](ReceiptsApi.md#get_receipt_pre_create_info) | **GET** /c/{company_id}/receipts/info | Get Receipt Pre-Create Info |
| [**get_receipts_monthly_totals**](ReceiptsApi.md#get_receipts_monthly_totals) | **GET** /c/{company_id}/receipts/monthly_totals | Get Receipts Monthly Totals |
| [**list_receipts**](ReceiptsApi.md#list_receipts) | **GET** /c/{company_id}/receipts | List Receipts |
| [**modify_receipt**](ReceiptsApi.md#modify_receipt) | **PUT** /c/{company_id}/receipts/{document_id} | Modify Receipt |


## create_receipt

> <CreateReceiptResponse> create_receipt(company_id, opts)

Create Receipt

Creates a new receipt.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_receipt_request: FattureInCloud_Ruby_Sdk::CreateReceiptRequest.new # CreateReceiptRequest | The Receipt to create.
}

begin
  # Create Receipt
  result = api_instance.create_receipt(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->create_receipt: #{e}"
end
```

#### Using the create_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReceiptResponse>, Integer, Hash)> create_receipt_with_http_info(company_id, opts)

```ruby
begin
  # Create Receipt
  data, status_code, headers = api_instance.create_receipt_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReceiptResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->create_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_receipt_request** | [**CreateReceiptRequest**](CreateReceiptRequest.md) | The Receipt to create. | [optional] |

### Return type

[**CreateReceiptResponse**](CreateReceiptResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_receipt

> delete_receipt(company_id, document_id)

Delete Receipt

Deletes the specified receipt.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Receipt
  api_instance.delete_receipt(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->delete_receipt: #{e}"
end
```

#### Using the delete_receipt_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_receipt_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Receipt
  data, status_code, headers = api_instance.delete_receipt_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->delete_receipt_with_http_info: #{e}"
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


## get_receipt

> <GetReceiptResponse> get_receipt(company_id, document_id, opts)

Get Receipt

Gets the specified receipt.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Receipt
  result = api_instance.get_receipt(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt: #{e}"
end
```

#### Using the get_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReceiptResponse>, Integer, Hash)> get_receipt_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Receipt
  data, status_code, headers = api_instance.get_receipt_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReceiptResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_with_http_info: #{e}"
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

[**GetReceiptResponse**](GetReceiptResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_receipt_pre_create_info

> <GetReceiptPreCreateInfoResponse> get_receipt_pre_create_info(company_id)

Get Receipt Pre-Create Info

Retrieves the information useful while creating a new receipt.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # Get Receipt Pre-Create Info
  result = api_instance.get_receipt_pre_create_info(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_pre_create_info: #{e}"
end
```

#### Using the get_receipt_pre_create_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReceiptPreCreateInfoResponse>, Integer, Hash)> get_receipt_pre_create_info_with_http_info(company_id)

```ruby
begin
  # Get Receipt Pre-Create Info
  data, status_code, headers = api_instance.get_receipt_pre_create_info_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReceiptPreCreateInfoResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_pre_create_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**GetReceiptPreCreateInfoResponse**](GetReceiptPreCreateInfoResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_receipts_monthly_totals

> <GetReceiptsMonthlyTotalsResponse> get_receipts_monthly_totals(company_id, type, year)

Get Receipts Monthly Totals

Returns the monthly totals by year and receipt type.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.
type = 'sales_receipt' # String | Receipt Type
year = 'year_example' # String | Year for which you want monthly totals

begin
  # Get Receipts Monthly Totals
  result = api_instance.get_receipts_monthly_totals(company_id, type, year)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipts_monthly_totals: #{e}"
end
```

#### Using the get_receipts_monthly_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReceiptsMonthlyTotalsResponse>, Integer, Hash)> get_receipts_monthly_totals_with_http_info(company_id, type, year)

```ruby
begin
  # Get Receipts Monthly Totals
  data, status_code, headers = api_instance.get_receipts_monthly_totals_with_http_info(company_id, type, year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReceiptsMonthlyTotalsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipts_monthly_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **type** | **String** | Receipt Type |  |
| **year** | **String** | Year for which you want monthly totals |  |

### Return type

[**GetReceiptsMonthlyTotalsResponse**](GetReceiptsMonthlyTotalsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_receipts

> <ListReceiptsResponse> list_receipts(company_id, opts)

List Receipts

Lists the receipts.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  page: 56, # Integer | The page to retrieve.
  per_page: 56, # Integer | The size of the page.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  q: 'q_example' # String | Query for filtering the results.
}

begin
  # List Receipts
  result = api_instance.list_receipts(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->list_receipts: #{e}"
end
```

#### Using the list_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReceiptsResponse>, Integer, Hash)> list_receipts_with_http_info(company_id, opts)

```ruby
begin
  # List Receipts
  data, status_code, headers = api_instance.list_receipts_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReceiptsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->list_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **page** | **Integer** | The page to retrieve. | [optional][default to 1] |
| **per_page** | **Integer** | The size of the page. | [optional][default to 5] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |
| **q** | **String** | Query for filtering the results. | [optional] |

### Return type

[**ListReceiptsResponse**](ListReceiptsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_receipt

> <ModifyReceiptResponse> modify_receipt(company_id, document_id, opts)

Modify Receipt

Modifies the specified receipt.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceiptsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  modify_receipt_request: FattureInCloud_Ruby_Sdk::ModifyReceiptRequest.new # ModifyReceiptRequest | Modified receipt.
}

begin
  # Modify Receipt
  result = api_instance.modify_receipt(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->modify_receipt: #{e}"
end
```

#### Using the modify_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyReceiptResponse>, Integer, Hash)> modify_receipt_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Modify Receipt
  data, status_code, headers = api_instance.modify_receipt_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyReceiptResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceiptsApi->modify_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **modify_receipt_request** | [**ModifyReceiptRequest**](ModifyReceiptRequest.md) | Modified receipt. | [optional] |

### Return type

[**ModifyReceiptResponse**](ModifyReceiptResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

