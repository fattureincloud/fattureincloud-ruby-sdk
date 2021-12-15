# FattureInCloud::Ruby::Sdk::SuppliersApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_supplier**](SuppliersApi.md#create_supplier) | **POST** /c/{company_id}/entities/suppliers | Create Supplier |
| [**delete_supplier**](SuppliersApi.md#delete_supplier) | **DELETE** /c/{company_id}/entities/suppliers/{supplier_id} | Delete Supplier |
| [**get_supplier**](SuppliersApi.md#get_supplier) | **GET** /c/{company_id}/entities/suppliers/{supplier_id} | Get Supplier |
| [**list_suppliers**](SuppliersApi.md#list_suppliers) | **GET** /c/{company_id}/entities/suppliers | List Suppliers |
| [**modify_supplier**](SuppliersApi.md#modify_supplier) | **PUT** /c/{company_id}/entities/suppliers/{supplier_id} | Modify Supplier |


## create_supplier

> <CreateSupplierResponse> create_supplier(company_id, opts)

Create Supplier

Creates a new supplier.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::SuppliersApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_supplier_request: FattureInCloud::Ruby::Sdk::CreateSupplierRequest.new # CreateSupplierRequest | The supplier to create
}

begin
  # Create Supplier
  result = api_instance.create_supplier(company_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->create_supplier: #{e}"
end
```

#### Using the create_supplier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSupplierResponse>, Integer, Hash)> create_supplier_with_http_info(company_id, opts)

```ruby
begin
  # Create Supplier
  data, status_code, headers = api_instance.create_supplier_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSupplierResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->create_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_supplier_request** | [**CreateSupplierRequest**](CreateSupplierRequest.md) | The supplier to create | [optional] |

### Return type

[**CreateSupplierResponse**](CreateSupplierResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_supplier

> delete_supplier(company_id, supplier_id)

Delete Supplier

Deletes the specified supplier.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::SuppliersApi.new
company_id = 12345 # Integer | The ID of the company.
supplier_id = 56 # Integer | The ID of the supplier.

begin
  # Delete Supplier
  api_instance.delete_supplier(company_id, supplier_id)
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->delete_supplier: #{e}"
end
```

#### Using the delete_supplier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_supplier_with_http_info(company_id, supplier_id)

```ruby
begin
  # Delete Supplier
  data, status_code, headers = api_instance.delete_supplier_with_http_info(company_id, supplier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->delete_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **supplier_id** | **Integer** | The ID of the supplier. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_supplier

> <GetSupplierResponse> get_supplier(company_id, supplier_id, opts)

Get Supplier

Gets the specified supplier.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::SuppliersApi.new
company_id = 12345 # Integer | The ID of the company.
supplier_id = 56 # Integer | The ID of the supplier.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Supplier
  result = api_instance.get_supplier(company_id, supplier_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->get_supplier: #{e}"
end
```

#### Using the get_supplier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSupplierResponse>, Integer, Hash)> get_supplier_with_http_info(company_id, supplier_id, opts)

```ruby
begin
  # Get Supplier
  data, status_code, headers = api_instance.get_supplier_with_http_info(company_id, supplier_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSupplierResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->get_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **supplier_id** | **Integer** | The ID of the supplier. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**GetSupplierResponse**](GetSupplierResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_suppliers

> <ListSuppliersResponse> list_suppliers(company_id, opts)

List Suppliers

Lists the suppliers.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::SuppliersApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56 # Integer | The size of the page.
}

begin
  # List Suppliers
  result = api_instance.list_suppliers(company_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->list_suppliers: #{e}"
end
```

#### Using the list_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSuppliersResponse>, Integer, Hash)> list_suppliers_with_http_info(company_id, opts)

```ruby
begin
  # List Suppliers
  data, status_code, headers = api_instance.list_suppliers_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSuppliersResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->list_suppliers_with_http_info: #{e}"
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

[**ListSuppliersResponse**](ListSuppliersResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_supplier

> <ModifySupplierResponse> modify_supplier(company_id, supplier_id, opts)

Modify Supplier

Modifies the specified supplier.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloud::Ruby::Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud::Ruby::Sdk::SuppliersApi.new
company_id = 12345 # Integer | The ID of the company.
supplier_id = 56 # Integer | The ID of the supplier.
opts = {
  modify_supplier_request: FattureInCloud::Ruby::Sdk::ModifySupplierRequest.new # ModifySupplierRequest | The modified Supplier. First level parameters are managed in delta mode.
}

begin
  # Modify Supplier
  result = api_instance.modify_supplier(company_id, supplier_id, opts)
  p result
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->modify_supplier: #{e}"
end
```

#### Using the modify_supplier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifySupplierResponse>, Integer, Hash)> modify_supplier_with_http_info(company_id, supplier_id, opts)

```ruby
begin
  # Modify Supplier
  data, status_code, headers = api_instance.modify_supplier_with_http_info(company_id, supplier_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifySupplierResponse>
rescue FattureInCloud::Ruby::Sdk::ApiError => e
  puts "Error when calling SuppliersApi->modify_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **supplier_id** | **Integer** | The ID of the supplier. |  |
| **modify_supplier_request** | [**ModifySupplierRequest**](ModifySupplierRequest.md) | The modified Supplier. First level parameters are managed in delta mode. | [optional] |

### Return type

[**ModifySupplierResponse**](ModifySupplierResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

