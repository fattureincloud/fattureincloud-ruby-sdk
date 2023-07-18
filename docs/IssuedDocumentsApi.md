# FattureInCloud_Ruby_Sdk::IssuedDocumentsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_issued_document**](IssuedDocumentsApi.md#create_issued_document) | **POST** /c/{company_id}/issued_documents | Create Issued Document |
| [**delete_issued_document**](IssuedDocumentsApi.md#delete_issued_document) | **DELETE** /c/{company_id}/issued_documents/{document_id} | Delete Issued Document |
| [**delete_issued_document_attachment**](IssuedDocumentsApi.md#delete_issued_document_attachment) | **DELETE** /c/{company_id}/issued_documents/{document_id}/attachment | Delete Issued Document Attachment |
| [**get_email_data**](IssuedDocumentsApi.md#get_email_data) | **GET** /c/{company_id}/issued_documents/{document_id}/email | Get Email Data |
| [**get_existing_issued_document_totals**](IssuedDocumentsApi.md#get_existing_issued_document_totals) | **POST** /c/{company_id}/issued_documents/{document_id}/totals | Get Existing Issued Document Totals |
| [**get_issued_document**](IssuedDocumentsApi.md#get_issued_document) | **GET** /c/{company_id}/issued_documents/{document_id} | Get Issued Document |
| [**get_issued_document_pre_create_info**](IssuedDocumentsApi.md#get_issued_document_pre_create_info) | **GET** /c/{company_id}/issued_documents/info | Get Issued Document Pre-create info |
| [**get_new_issued_document_totals**](IssuedDocumentsApi.md#get_new_issued_document_totals) | **POST** /c/{company_id}/issued_documents/totals | Get New Issued Document Totals |
| [**join_issued_documents**](IssuedDocumentsApi.md#join_issued_documents) | **GET** /c/{company_id}/issued_documents/join | Join issued documents |
| [**list_issued_documents**](IssuedDocumentsApi.md#list_issued_documents) | **GET** /c/{company_id}/issued_documents | List Issued Documents |
| [**modify_issued_document**](IssuedDocumentsApi.md#modify_issued_document) | **PUT** /c/{company_id}/issued_documents/{document_id} | Modify Issued Document |
| [**schedule_email**](IssuedDocumentsApi.md#schedule_email) | **POST** /c/{company_id}/issued_documents/{document_id}/email | Schedule Email |
| [**transform_issued_document**](IssuedDocumentsApi.md#transform_issued_document) | **GET** /c/{company_id}/issued_documents/transform | Transform issued document |
| [**upload_issued_document_attachment**](IssuedDocumentsApi.md#upload_issued_document_attachment) | **POST** /c/{company_id}/issued_documents/attachment | Upload Issued Document Attachment |


## create_issued_document

> <CreateIssuedDocumentResponse> create_issued_document(company_id, opts)

Create Issued Document

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_issued_document_request: FattureInCloud_Ruby_Sdk::CreateIssuedDocumentRequest.new # CreateIssuedDocumentRequest | The Issued Document
}

begin
  # Create Issued Document
  result = api_instance.create_issued_document(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->create_issued_document: #{e}"
end
```

#### Using the create_issued_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIssuedDocumentResponse>, Integer, Hash)> create_issued_document_with_http_info(company_id, opts)

```ruby
begin
  # Create Issued Document
  data, status_code, headers = api_instance.create_issued_document_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIssuedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->create_issued_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_issued_document_request** | [**CreateIssuedDocumentRequest**](CreateIssuedDocumentRequest.md) | The Issued Document | [optional] |

### Return type

[**CreateIssuedDocumentResponse**](CreateIssuedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_issued_document

> delete_issued_document(company_id, document_id)

Delete Issued Document

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Issued Document
  api_instance.delete_issued_document(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->delete_issued_document: #{e}"
end
```

#### Using the delete_issued_document_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_issued_document_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Issued Document
  data, status_code, headers = api_instance.delete_issued_document_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->delete_issued_document_with_http_info: #{e}"
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


## delete_issued_document_attachment

> delete_issued_document_attachment(company_id, document_id)

Delete Issued Document Attachment

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Delete Issued Document Attachment
  api_instance.delete_issued_document_attachment(company_id, document_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->delete_issued_document_attachment: #{e}"
end
```

#### Using the delete_issued_document_attachment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_issued_document_attachment_with_http_info(company_id, document_id)

```ruby
begin
  # Delete Issued Document Attachment
  data, status_code, headers = api_instance.delete_issued_document_attachment_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->delete_issued_document_attachment_with_http_info: #{e}"
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


## get_email_data

> <GetEmailDataResponse> get_email_data(company_id, document_id)

Get Email Data

Gets the pre-compiled email details.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Get Email Data
  result = api_instance.get_email_data(company_id, document_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_email_data: #{e}"
end
```

#### Using the get_email_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailDataResponse>, Integer, Hash)> get_email_data_with_http_info(company_id, document_id)

```ruby
begin
  # Get Email Data
  data, status_code, headers = api_instance.get_email_data_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailDataResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_email_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |

### Return type

[**GetEmailDataResponse**](GetEmailDataResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_existing_issued_document_totals

> <GetExistingIssuedDocumentTotalsResponse> get_existing_issued_document_totals(company_id, document_id, opts)

Get Existing Issued Document Totals

Returns the totals for a specified document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  get_existing_issued_document_totals_request: FattureInCloud_Ruby_Sdk::GetExistingIssuedDocumentTotalsRequest.new # GetExistingIssuedDocumentTotalsRequest | 
}

begin
  # Get Existing Issued Document Totals
  result = api_instance.get_existing_issued_document_totals(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_existing_issued_document_totals: #{e}"
end
```

#### Using the get_existing_issued_document_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExistingIssuedDocumentTotalsResponse>, Integer, Hash)> get_existing_issued_document_totals_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Existing Issued Document Totals
  data, status_code, headers = api_instance.get_existing_issued_document_totals_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExistingIssuedDocumentTotalsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_existing_issued_document_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **get_existing_issued_document_totals_request** | [**GetExistingIssuedDocumentTotalsRequest**](GetExistingIssuedDocumentTotalsRequest.md) |  | [optional] |

### Return type

[**GetExistingIssuedDocumentTotalsResponse**](GetExistingIssuedDocumentTotalsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_issued_document

> <GetIssuedDocumentResponse> get_issued_document(company_id, document_id, opts)

Get Issued Document

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Issued Document
  result = api_instance.get_issued_document(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_issued_document: #{e}"
end
```

#### Using the get_issued_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIssuedDocumentResponse>, Integer, Hash)> get_issued_document_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get Issued Document
  data, status_code, headers = api_instance.get_issued_document_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIssuedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_issued_document_with_http_info: #{e}"
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

[**GetIssuedDocumentResponse**](GetIssuedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issued_document_pre_create_info

> <GetIssuedDocumentPreCreateInfoResponse> get_issued_document_pre_create_info(company_id, type)

Get Issued Document Pre-create info

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
type = 'invoice' # String | The type of the issued document.

begin
  # Get Issued Document Pre-create info
  result = api_instance.get_issued_document_pre_create_info(company_id, type)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_issued_document_pre_create_info: #{e}"
end
```

#### Using the get_issued_document_pre_create_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIssuedDocumentPreCreateInfoResponse>, Integer, Hash)> get_issued_document_pre_create_info_with_http_info(company_id, type)

```ruby
begin
  # Get Issued Document Pre-create info
  data, status_code, headers = api_instance.get_issued_document_pre_create_info_with_http_info(company_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIssuedDocumentPreCreateInfoResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_issued_document_pre_create_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **type** | **String** | The type of the issued document. |  |

### Return type

[**GetIssuedDocumentPreCreateInfoResponse**](GetIssuedDocumentPreCreateInfoResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_new_issued_document_totals

> <GetNewIssuedDocumentTotalsResponse> get_new_issued_document_totals(company_id, opts)

Get New Issued Document Totals

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  get_new_issued_document_totals_request: FattureInCloud_Ruby_Sdk::GetNewIssuedDocumentTotalsRequest.new # GetNewIssuedDocumentTotalsRequest | 
}

begin
  # Get New Issued Document Totals
  result = api_instance.get_new_issued_document_totals(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_new_issued_document_totals: #{e}"
end
```

#### Using the get_new_issued_document_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNewIssuedDocumentTotalsResponse>, Integer, Hash)> get_new_issued_document_totals_with_http_info(company_id, opts)

```ruby
begin
  # Get New Issued Document Totals
  data, status_code, headers = api_instance.get_new_issued_document_totals_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNewIssuedDocumentTotalsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->get_new_issued_document_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **get_new_issued_document_totals_request** | [**GetNewIssuedDocumentTotalsRequest**](GetNewIssuedDocumentTotalsRequest.md) |  | [optional] |

### Return type

[**GetNewIssuedDocumentTotalsResponse**](GetNewIssuedDocumentTotalsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## join_issued_documents

> <JoinIssuedDocumentsResponse> join_issued_documents(company_id, ids, opts)

Join issued documents

Joins issued documents.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
ids = '1,2,3,4' # String | Ids of the documents.
opts = {
  group: 0, # Integer | Group items.
  e_invoice: 0 # Integer | New document e_invoice.
}

begin
  # Join issued documents
  result = api_instance.join_issued_documents(company_id, ids, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->join_issued_documents: #{e}"
end
```

#### Using the join_issued_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JoinIssuedDocumentsResponse>, Integer, Hash)> join_issued_documents_with_http_info(company_id, ids, opts)

```ruby
begin
  # Join issued documents
  data, status_code, headers = api_instance.join_issued_documents_with_http_info(company_id, ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JoinIssuedDocumentsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->join_issued_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **ids** | **String** | Ids of the documents. |  |
| **group** | **Integer** | Group items. | [optional] |
| **e_invoice** | **Integer** | New document e_invoice. | [optional] |

### Return type

[**JoinIssuedDocumentsResponse**](JoinIssuedDocumentsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_issued_documents

> <ListIssuedDocumentsResponse> list_issued_documents(company_id, type, opts)

List Issued Documents

Lists the issued documents.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
type = 'invoice' # String | The type of the issued document.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56, # Integer | The size of the page.
  q: 'q_example', # String | Query for filtering the results.
  inclusive: 0 # Integer | (Only for type = delivery_notes) Include invoices delivery notes.
}

begin
  # List Issued Documents
  result = api_instance.list_issued_documents(company_id, type, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->list_issued_documents: #{e}"
end
```

#### Using the list_issued_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIssuedDocumentsResponse>, Integer, Hash)> list_issued_documents_with_http_info(company_id, type, opts)

```ruby
begin
  # List Issued Documents
  data, status_code, headers = api_instance.list_issued_documents_with_http_info(company_id, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIssuedDocumentsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->list_issued_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **type** | **String** | The type of the issued document. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |
| **page** | **Integer** | The page to retrieve. | [optional][default to 1] |
| **per_page** | **Integer** | The size of the page. | [optional][default to 5] |
| **q** | **String** | Query for filtering the results. | [optional] |
| **inclusive** | **Integer** | (Only for type &#x3D; delivery_notes) Include invoices delivery notes. | [optional] |

### Return type

[**ListIssuedDocumentsResponse**](ListIssuedDocumentsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_issued_document

> <ModifyIssuedDocumentResponse> modify_issued_document(company_id, document_id, opts)

Modify Issued Document

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

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  modify_issued_document_request: FattureInCloud_Ruby_Sdk::ModifyIssuedDocumentRequest.new # ModifyIssuedDocumentRequest | The modified document
}

begin
  # Modify Issued Document
  result = api_instance.modify_issued_document(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->modify_issued_document: #{e}"
end
```

#### Using the modify_issued_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyIssuedDocumentResponse>, Integer, Hash)> modify_issued_document_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Modify Issued Document
  data, status_code, headers = api_instance.modify_issued_document_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyIssuedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->modify_issued_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **modify_issued_document_request** | [**ModifyIssuedDocumentRequest**](ModifyIssuedDocumentRequest.md) | The modified document | [optional] |

### Return type

[**ModifyIssuedDocumentResponse**](ModifyIssuedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## schedule_email

> schedule_email(company_id, document_id, opts)

Schedule Email

Schedules the sending of a document by email.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  schedule_email_request: FattureInCloud_Ruby_Sdk::ScheduleEmailRequest.new # ScheduleEmailRequest | Email Schedule
}

begin
  # Schedule Email
  api_instance.schedule_email(company_id, document_id, opts)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->schedule_email: #{e}"
end
```

#### Using the schedule_email_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> schedule_email_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Schedule Email
  data, status_code, headers = api_instance.schedule_email_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->schedule_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **schedule_email_request** | [**ScheduleEmailRequest**](ScheduleEmailRequest.md) | Email Schedule | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## transform_issued_document

> <TransformIssuedDocumentResponse> transform_issued_document(company_id, original_document_id, new_type, opts)

Transform issued document

Transforms the document.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
original_document_id = 56 # Integer | Original document id.
new_type = 'new_type_example' # String | New document type.
opts = {
  e_invoice: 0, # Integer | New document e_invoice.
  transform_keep_copy: 0 # Integer | Keep the old document.
}

begin
  # Transform issued document
  result = api_instance.transform_issued_document(company_id, original_document_id, new_type, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->transform_issued_document: #{e}"
end
```

#### Using the transform_issued_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransformIssuedDocumentResponse>, Integer, Hash)> transform_issued_document_with_http_info(company_id, original_document_id, new_type, opts)

```ruby
begin
  # Transform issued document
  data, status_code, headers = api_instance.transform_issued_document_with_http_info(company_id, original_document_id, new_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransformIssuedDocumentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->transform_issued_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **original_document_id** | **Integer** | Original document id. |  |
| **new_type** | **String** | New document type. |  |
| **e_invoice** | **Integer** | New document e_invoice. | [optional] |
| **transform_keep_copy** | **Integer** | Keep the old document. | [optional] |

### Return type

[**TransformIssuedDocumentResponse**](TransformIssuedDocumentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_issued_document_attachment

> <UploadIssuedDocumentAttachmentResponse> upload_issued_document_attachment(company_id, opts)

Upload Issued Document Attachment

Uploads an attachment destined to an issued document. The actual association between the document and the attachment must be implemented separately, using the returned token.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  filename: 'filename_example', # String | Attachment file name
  attachment: File.new('/path/to/some/file') # File | Attachment file [.png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx]
}

begin
  # Upload Issued Document Attachment
  result = api_instance.upload_issued_document_attachment(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->upload_issued_document_attachment: #{e}"
end
```

#### Using the upload_issued_document_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadIssuedDocumentAttachmentResponse>, Integer, Hash)> upload_issued_document_attachment_with_http_info(company_id, opts)

```ruby
begin
  # Upload Issued Document Attachment
  data, status_code, headers = api_instance.upload_issued_document_attachment_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadIssuedDocumentAttachmentResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedDocumentsApi->upload_issued_document_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **filename** | **String** | Attachment file name | [optional] |
| **attachment** | **File** | Attachment file [.png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx] | [optional] |

### Return type

[**UploadIssuedDocumentAttachmentResponse**](UploadIssuedDocumentAttachmentResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

