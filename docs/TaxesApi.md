# FattureInCloud_Ruby_Sdk::TaxesApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_f24**](TaxesApi.md#create_f24) | **POST** /c/{company_id}/taxes | Create F24 |
| [**delete_f24**](TaxesApi.md#delete_f24) | **DELETE** /c/{company_id}/taxes/{document_id} | Delete F24 |
| [**delete_f24_attachment**](TaxesApi.md#delete_f24_attachment) | **DELETE** /c/{company_id}/taxes/{document_id}/attachment | Delete F24 Attachment |
| [**get_f24**](TaxesApi.md#get_f24) | **GET** /c/{company_id}/taxes/{document_id} | Get F24 |
| [**list_f24**](TaxesApi.md#list_f24) | **GET** /c/{company_id}/taxes | List F24 |
| [**modify_f24**](TaxesApi.md#modify_f24) | **PUT** /c/{company_id}/taxes/{document_id} | Modify F24 |
| [**upload_f24_attachment**](TaxesApi.md#upload_f24_attachment) | **POST** /c/{company_id}/taxes/attachment | Upload F24 Attachment |


## create_f24

> <CreateF24Response> create_f24(company_id, opts)

Create F24

Creates a new F24.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_f24_request: FattureInCloud_Ruby_Sdk::CreateF24Request.new # CreateF24Request | The F24 to create
}

begin
  # Create F24
  result = api_instance.create_f24(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->create_f24: #{e}"
end
```

#### Using the create_f24_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateF24Response>, Integer, Hash)> create_f24_with_http_info(company_id, opts)

```ruby
begin
  # Create F24
  data, status_code, headers = api_instance.create_f24_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateF24Response>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->create_f24_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_f24_request** | [**CreateF24Request**](CreateF24Request.md) | The F24 to create | [optional] |

### Return type

[**CreateF24Response**](CreateF24Response.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_f24

> delete_f24(company_id, document_id)

Delete F24

Removes the specified F24.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete F24
  api_instance.delete_f24(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->delete_f24: #{e}"
end
```

#### Using the delete_f24_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_f24_with_http_info(company_id, document_id)

```ruby
begin
  # Delete F24
  data, status_code, headers = api_instance.delete_f24_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->delete_f24_with_http_info: #{e}"
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


## delete_f24_attachment

> delete_f24_attachment(company_id, document_id)

Delete F24 Attachment

Removes the attachment of the specified F24.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete F24 Attachment
  api_instance.delete_f24_attachment(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->delete_f24_attachment: #{e}"
end
```

#### Using the delete_f24_attachment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_f24_attachment_with_http_info(company_id, document_id)

```ruby
begin
  # Delete F24 Attachment
  data, status_code, headers = api_instance.delete_f24_attachment_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->delete_f24_attachment_with_http_info: #{e}"
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


## get_f24

> <GetF24Response> get_f24(company_id, document_id, opts)

Get F24

Gets the specified F24.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get F24
  result = api_instance.get_f24(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->get_f24: #{e}"
end
```

#### Using the get_f24_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetF24Response>, Integer, Hash)> get_f24_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get F24
  data, status_code, headers = api_instance.get_f24_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetF24Response>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->get_f24_with_http_info: #{e}"
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

[**GetF24Response**](GetF24Response.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_f24

> <ListF24Response> list_f24(company_id, opts)

List F24

Lists the F24s.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56, # Integer | The size of the page.
  q: 'q_example' # String | Query for filtering the results.
}

begin
  # List F24
  result = api_instance.list_f24(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->list_f24: #{e}"
end
```

#### Using the list_f24_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListF24Response>, Integer, Hash)> list_f24_with_http_info(company_id, opts)

```ruby
begin
  # List F24
  data, status_code, headers = api_instance.list_f24_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListF24Response>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->list_f24_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |
| **page** | **Integer** | The page to retrieve. | [optional][default to 1] |
| **per_page** | **Integer** | The size of the page. | [optional][default to 5] |
| **q** | **String** | Query for filtering the results. | [optional] |

### Return type

[**ListF24Response**](ListF24Response.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_f24

> <ModifyF24Response> modify_f24(company_id, document_id, opts)

Modify F24

Modifies the specified F24.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  modify_f24_request: FattureInCloud_Ruby_Sdk::ModifyF24Request.new # ModifyF24Request | The F24
}

begin
  # Modify F24
  result = api_instance.modify_f24(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->modify_f24: #{e}"
end
```

#### Using the modify_f24_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyF24Response>, Integer, Hash)> modify_f24_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Modify F24
  data, status_code, headers = api_instance.modify_f24_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyF24Response>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->modify_f24_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **modify_f24_request** | [**ModifyF24Request**](ModifyF24Request.md) | The F24 | [optional] |

### Return type

[**ModifyF24Response**](ModifyF24Response.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_f24_attachment

> <UploadF24AttachmentResponse> upload_f24_attachment(company_id, opts)

Upload F24 Attachment

Uploads an attachment destined to a F24. The actual association between the document and the attachment must be implemented separately, using the returned token.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::TaxesApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  filename: 'filename_example', # String | Name of the file.
  attachment: File.new('/path/to/some/file') # File | Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
}

begin
  # Upload F24 Attachment
  result = api_instance.upload_f24_attachment(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->upload_f24_attachment: #{e}"
end
```

#### Using the upload_f24_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadF24AttachmentResponse>, Integer, Hash)> upload_f24_attachment_with_http_info(company_id, opts)

```ruby
begin
  # Upload F24 Attachment
  data, status_code, headers = api_instance.upload_f24_attachment_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadF24AttachmentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling TaxesApi->upload_f24_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **filename** | **String** | Name of the file. | [optional] |
| **attachment** | **File** | Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx | [optional] |

### Return type

[**UploadF24AttachmentResponse**](UploadF24AttachmentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

