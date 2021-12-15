# FattureInCloud::Ruby::Sdk::ArchiveApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_archive_document**](ArchiveApi.md#create_archive_document) | **POST** /c/{company_id}/archive | Create Archive Document |
| [**delete_archive_document**](ArchiveApi.md#delete_archive_document) | **DELETE** /c/{company_id}/archive/{document_id} | Delete Archive Document |
| [**get_archive_document**](ArchiveApi.md#get_archive_document) | **GET** /c/{company_id}/archive/{document_id} | Get Archive Document |
| [**list_archive_documents**](ArchiveApi.md#list_archive_documents) | **GET** /c/{company_id}/archive | List Archive Documents |
| [**modify_archive_document**](ArchiveApi.md#modify_archive_document) | **PUT** /c/{company_id}/archive/{document_id} | Modify Archive Document |
| [**upload_archive_document_attachment**](ArchiveApi.md#upload_archive_document_attachment) | **POST** /c/{company_id}/archive/attachment | Upload Archive Document Attachment |


## create_archive_document

> <CreateArchiveDocumentResponse> create_archive_document(company_id, opts)

Create Archive Document

Creates a new archive document.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::ArchiveApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_archive_document_request: FattureInCloud::Ruby::Sdk::CreateArchiveDocumentRequest.new # CreateArchiveDocumentRequest | The Archive Document.
}

begin
  # Create Archive Document
  result = api_instance.create_archive_document(company_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->create_archive_document: #{e}"
end
```

#### Using the create_archive_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateArchiveDocumentResponse>, Integer, Hash)> create_archive_document_with_http_info(company_id, opts)

```ruby
begin
  # Create Archive Document
  data, status_code, headers = api_instance.create_archive_document_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateArchiveDocumentResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->create_archive_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_archive_document_request** | [**CreateArchiveDocumentRequest**](CreateArchiveDocumentRequest.md) | The Archive Document. | [optional] |

### Return type

[**CreateArchiveDocumentResponse**](CreateArchiveDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_archive_document

> delete_archive_document(company_id, document_id)

Delete Archive Document

Deletes the specified archive document.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::ArchiveApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Archive Document
  api_instance.delete_archive_document(company_id, document_id)
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->delete_archive_document: #{e}"
end
```

#### Using the delete_archive_document_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_archive_document_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Archive Document
  data, status_code, headers = api_instance.delete_archive_document_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->delete_archive_document_with_http_info: #{e}"
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


## get_archive_document

> <GetArchiveDocumentResponse> get_archive_document(company_id, document_id, opts)

Get Archive Document

Gets the specified archive document.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::ArchiveApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Archive Document
  result = api_instance.get_archive_document(company_id, document_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->get_archive_document: #{e}"
end
```

#### Using the get_archive_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetArchiveDocumentResponse>, Integer, Hash)> get_archive_document_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Archive Document
  data, status_code, headers = api_instance.get_archive_document_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetArchiveDocumentResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->get_archive_document_with_http_info: #{e}"
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

[**GetArchiveDocumentResponse**](GetArchiveDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## list_archive_documents

> <ListArchiveDocumentsResponse> list_archive_documents(company_id, opts)

List Archive Documents

Lists the archive documents.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::ArchiveApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56 # Integer | The size of the page.
}

begin
  # List Archive Documents
  result = api_instance.list_archive_documents(company_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->list_archive_documents: #{e}"
end
```

#### Using the list_archive_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListArchiveDocumentsResponse>, Integer, Hash)> list_archive_documents_with_http_info(company_id, opts)

```ruby
begin
  # List Archive Documents
  data, status_code, headers = api_instance.list_archive_documents_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListArchiveDocumentsResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->list_archive_documents_with_http_info: #{e}"
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

### Return type

[**ListArchiveDocumentsResponse**](ListArchiveDocumentsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_archive_document

> <ModifyArchiveDocumentResponse> modify_archive_document(company_id, document_id, opts)

Modify Archive Document

Modifies the specified archive document.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::ArchiveApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  modify_archive_document_request: FattureInCloud::Ruby::Sdk::ModifyArchiveDocumentRequest.new # ModifyArchiveDocumentRequest | Modified Archive Document
}

begin
  # Modify Archive Document
  result = api_instance.modify_archive_document(company_id, document_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->modify_archive_document: #{e}"
end
```

#### Using the modify_archive_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyArchiveDocumentResponse>, Integer, Hash)> modify_archive_document_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Modify Archive Document
  data, status_code, headers = api_instance.modify_archive_document_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyArchiveDocumentResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->modify_archive_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **modify_archive_document_request** | [**ModifyArchiveDocumentRequest**](ModifyArchiveDocumentRequest.md) | Modified Archive Document | [optional] |

### Return type

[**ModifyArchiveDocumentResponse**](ModifyArchiveDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_archive_document_attachment

> <UploadArchiveAttachmentResponse> upload_archive_document_attachment(company_id, opts)

Upload Archive Document Attachment

Uploads an attachment destined to an archive document. The actual association between the document and the attachment must be implemented separately, using the returned token.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::ArchiveApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  filename: 'filename_example', # String | Name of the file.
  attachment: File.new('/path/to/some/file') # File | Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
}

begin
  # Upload Archive Document Attachment
  result = api_instance.upload_archive_document_attachment(company_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->upload_archive_document_attachment: #{e}"
end
```

#### Using the upload_archive_document_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadArchiveAttachmentResponse>, Integer, Hash)> upload_archive_document_attachment_with_http_info(company_id, opts)

```ruby
begin
  # Upload Archive Document Attachment
  data, status_code, headers = api_instance.upload_archive_document_attachment_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadArchiveAttachmentResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling ArchiveApi->upload_archive_document_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **filename** | **String** | Name of the file. | [optional] |
| **attachment** | **File** | Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx | [optional] |

### Return type

[**UploadArchiveAttachmentResponse**](UploadArchiveAttachmentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

