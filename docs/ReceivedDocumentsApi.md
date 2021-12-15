# FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_received_document**](ReceivedDocumentsApi.md#create_received_document) | **POST** /c/{company_id}/received_documents | Create Received Document |
| [**delete_received_document**](ReceivedDocumentsApi.md#delete_received_document) | **DELETE** /c/{company_id}/received_documents/{document_id} | Delete Received Document |
| [**delete_received_document_attachment**](ReceivedDocumentsApi.md#delete_received_document_attachment) | **DELETE** /c/{company_id}/received_documents/{document_id}/attachment | Delete Received Document Attachment |
| [**get_existing_received_document_totals**](ReceivedDocumentsApi.md#get_existing_received_document_totals) | **POST** /c/{company_id}/received_documents/{document_id}/totals | Get Existing Received Document Totals |
| [**get_new_received_document_totals**](ReceivedDocumentsApi.md#get_new_received_document_totals) | **POST** /c/{company_id}/received_documents/totals | Get New Received Document Totals |
| [**get_received_document**](ReceivedDocumentsApi.md#get_received_document) | **GET** /c/{company_id}/received_documents/{document_id} | Get Received Document |
| [**get_received_document_pre_create_info**](ReceivedDocumentsApi.md#get_received_document_pre_create_info) | **GET** /c/{company_id}/received_documents/info | Get Received Document Pre-Create Info |
| [**list_received_documents**](ReceivedDocumentsApi.md#list_received_documents) | **GET** /c/{company_id}/received_documents | List Received Documents |
| [**modify_received_document**](ReceivedDocumentsApi.md#modify_received_document) | **PUT** /c/{company_id}/received_documents/{document_id} | Modify Received Document |
| [**upload_received_document_attachment**](ReceivedDocumentsApi.md#upload_received_document_attachment) | **POST** /c/{company_id}/received_documents/attachment | Upload Received Document Attachment |


## create_received_document

> <CreateReceivedDocumentResponse> create_received_document(company_id, opts)

Create Received Document

Creates a new document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_received_document_request: FattureInCloud_Ruby_Sdk::CreateReceivedDocumentRequest.new({data: FattureInCloud_Ruby_Sdk::ReceivedDocument.new({entity: FattureInCloud_Ruby_Sdk::ReceivedDocumentEntity.new})}) # CreateReceivedDocumentRequest | Document to create
}

begin
  # Create Received Document
  result = api_instance.create_received_document(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->create_received_document: #{e}"
end
```

#### Using the create_received_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReceivedDocumentResponse>, Integer, Hash)> create_received_document_with_http_info(company_id, opts)

```ruby
begin
  # Create Received Document
  data, status_code, headers = api_instance.create_received_document_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReceivedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->create_received_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_received_document_request** | [**CreateReceivedDocumentRequest**](CreateReceivedDocumentRequest.md) | Document to create | [optional] |

### Return type

[**CreateReceivedDocumentResponse**](CreateReceivedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_received_document

> delete_received_document(company_id, document_id)

Delete Received Document

Deletes the specified document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Received Document
  api_instance.delete_received_document(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->delete_received_document: #{e}"
end
```

#### Using the delete_received_document_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_received_document_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Received Document
  data, status_code, headers = api_instance.delete_received_document_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->delete_received_document_with_http_info: #{e}"
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


## delete_received_document_attachment

> delete_received_document_attachment(company_id, document_id)

Delete Received Document Attachment

Removes the attachment of the specified document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Received Document Attachment
  api_instance.delete_received_document_attachment(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->delete_received_document_attachment: #{e}"
end
```

#### Using the delete_received_document_attachment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_received_document_attachment_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Received Document Attachment
  data, status_code, headers = api_instance.delete_received_document_attachment_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->delete_received_document_attachment_with_http_info: #{e}"
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


## get_existing_received_document_totals

> <GetExistingReceivedDocumentTotalsResponse> get_existing_received_document_totals(company_id, document_id, opts)

Get Existing Received Document Totals

Returns the totals for the specified document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  get_existing_received_document_totals_request: FattureInCloud_Ruby_Sdk::GetExistingReceivedDocumentTotalsRequest.new # GetExistingReceivedDocumentTotalsRequest | Received document.
}

begin
  # Get Existing Received Document Totals
  result = api_instance.get_existing_received_document_totals(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_existing_received_document_totals: #{e}"
end
```

#### Using the get_existing_received_document_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExistingReceivedDocumentTotalsResponse>, Integer, Hash)> get_existing_received_document_totals_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Existing Received Document Totals
  data, status_code, headers = api_instance.get_existing_received_document_totals_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExistingReceivedDocumentTotalsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_existing_received_document_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **get_existing_received_document_totals_request** | [**GetExistingReceivedDocumentTotalsRequest**](GetExistingReceivedDocumentTotalsRequest.md) | Received document. | [optional] |

### Return type

[**GetExistingReceivedDocumentTotalsResponse**](GetExistingReceivedDocumentTotalsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_new_received_document_totals

> <GetNewReceivedDocumentTotalsResponse> get_new_received_document_totals(company_id, opts)

Get New Received Document Totals

Returns the totals for a new document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  get_new_received_document_totals_request: FattureInCloud_Ruby_Sdk::GetNewReceivedDocumentTotalsRequest.new # GetNewReceivedDocumentTotalsRequest | Received document.
}

begin
  # Get New Received Document Totals
  result = api_instance.get_new_received_document_totals(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_new_received_document_totals: #{e}"
end
```

#### Using the get_new_received_document_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNewReceivedDocumentTotalsResponse>, Integer, Hash)> get_new_received_document_totals_with_http_info(company_id, opts)

```ruby
begin
  # Get New Received Document Totals
  data, status_code, headers = api_instance.get_new_received_document_totals_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNewReceivedDocumentTotalsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_new_received_document_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **get_new_received_document_totals_request** | [**GetNewReceivedDocumentTotalsRequest**](GetNewReceivedDocumentTotalsRequest.md) | Received document. | [optional] |

### Return type

[**GetNewReceivedDocumentTotalsResponse**](GetNewReceivedDocumentTotalsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_received_document

> <GetReceivedDocumentResponse> get_received_document(company_id, document_id, opts)

Get Received Document

Gets the specified document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Received Document
  result = api_instance.get_received_document(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_received_document: #{e}"
end
```

#### Using the get_received_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReceivedDocumentResponse>, Integer, Hash)> get_received_document_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Received Document
  data, status_code, headers = api_instance.get_received_document_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReceivedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_received_document_with_http_info: #{e}"
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

[**GetReceivedDocumentResponse**](GetReceivedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_received_document_pre_create_info

> <GetReceivedDocumentPreCreateInfoResponse> get_received_document_pre_create_info(company_id, type)

Get Received Document Pre-Create Info

Retrieves the information useful while creating a new document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
type = 'expense' # String | The type of the received document.

begin
  # Get Received Document Pre-Create Info
  result = api_instance.get_received_document_pre_create_info(company_id, type)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_received_document_pre_create_info: #{e}"
end
```

#### Using the get_received_document_pre_create_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReceivedDocumentPreCreateInfoResponse>, Integer, Hash)> get_received_document_pre_create_info_with_http_info(company_id, type)

```ruby
begin
  # Get Received Document Pre-Create Info
  data, status_code, headers = api_instance.get_received_document_pre_create_info_with_http_info(company_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReceivedDocumentPreCreateInfoResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->get_received_document_pre_create_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **type** | **String** | The type of the received document. |  |

### Return type

[**GetReceivedDocumentPreCreateInfoResponse**](GetReceivedDocumentPreCreateInfoResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_received_documents

> <ListReceivedDocumentsResponse> list_received_documents(company_id, type, opts)

List Received Documents

Lists the received documents.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
type = 'expense' # String | The type of the received document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56 # Integer | The size of the page.
}

begin
  # List Received Documents
  result = api_instance.list_received_documents(company_id, type, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->list_received_documents: #{e}"
end
```

#### Using the list_received_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReceivedDocumentsResponse>, Integer, Hash)> list_received_documents_with_http_info(company_id, type, opts)

```ruby
begin
  # List Received Documents
  data, status_code, headers = api_instance.list_received_documents_with_http_info(company_id, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReceivedDocumentsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->list_received_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **type** | **String** | The type of the received document. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |
| **page** | **Integer** | The page to retrieve. | [optional][default to 1] |
| **per_page** | **Integer** | The size of the page. | [optional][default to 5] |

### Return type

[**ListReceivedDocumentsResponse**](ListReceivedDocumentsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_received_document

> <ModifyReceivedDocumentResponse> modify_received_document(company_id, document_id, opts)

Modify Received Document

Modifies the specified document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  modify_received_document_request: FattureInCloud_Ruby_Sdk::ModifyReceivedDocumentRequest.new # ModifyReceivedDocumentRequest | Modified document.
}

begin
  # Modify Received Document
  result = api_instance.modify_received_document(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->modify_received_document: #{e}"
end
```

#### Using the modify_received_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyReceivedDocumentResponse>, Integer, Hash)> modify_received_document_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Modify Received Document
  data, status_code, headers = api_instance.modify_received_document_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyReceivedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->modify_received_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **modify_received_document_request** | [**ModifyReceivedDocumentRequest**](ModifyReceivedDocumentRequest.md) | Modified document. | [optional] |

### Return type

[**ModifyReceivedDocumentResponse**](ModifyReceivedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_received_document_attachment

> <UploadReceivedDocumentAttachmentResponse> upload_received_document_attachment(company_id, opts)

Upload Received Document Attachment

Uploads an attachment destined to a received document. The actual association between the document and the attachment must be implemented separately, using the returned token.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  filename: 'filename_example', # String | Name of the file.
  attachment: File.new('/path/to/some/file') # File | Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
}

begin
  # Upload Received Document Attachment
  result = api_instance.upload_received_document_attachment(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->upload_received_document_attachment: #{e}"
end
```

#### Using the upload_received_document_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadReceivedDocumentAttachmentResponse>, Integer, Hash)> upload_received_document_attachment_with_http_info(company_id, opts)

```ruby
begin
  # Upload Received Document Attachment
  data, status_code, headers = api_instance.upload_received_document_attachment_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadReceivedDocumentAttachmentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling ReceivedDocumentsApi->upload_received_document_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **filename** | **String** | Name of the file. | [optional] |
| **attachment** | **File** | Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx | [optional] |

### Return type

[**UploadReceivedDocumentAttachmentResponse**](UploadReceivedDocumentAttachmentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

