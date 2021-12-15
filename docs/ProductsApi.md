# FattureInCloudSdk::ProductsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /c/{company_id}/products | Create Product |
| [**delete_product**](ProductsApi.md#delete_product) | **DELETE** /c/{company_id}/products/{product_id} | Delete Product |
| [**get_product**](ProductsApi.md#get_product) | **GET** /c/{company_id}/products/{product_id} | Get Product |
| [**list_products**](ProductsApi.md#list_products) | **GET** /c/{company_id}/products | List Products |
| [**modify_product**](ProductsApi.md#modify_product) | **PUT** /c/{company_id}/products/{product_id} | Modify Product |


## create_product

> <CreateProductResponse> create_product(company_id, opts)

Create Product

Creates a new product.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloudSdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloudSdk::ProductsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_product_request: FattureInCloudSdk::CreateProductRequest.new # CreateProductRequest | 
}

begin
  # Create Product
  result = api_instance.create_product(company_id, opts)
  p result
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductResponse>, Integer, Hash)> create_product_with_http_info(company_id, opts)

```ruby
begin
  # Create Product
  data, status_code, headers = api_instance.create_product_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductResponse>
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_product_request** | [**CreateProductRequest**](CreateProductRequest.md) |  | [optional] |

### Return type

[**CreateProductResponse**](CreateProductResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product

> delete_product(company_id, product_id)

Delete Product

Deletes the specified product.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloudSdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloudSdk::ProductsApi.new
company_id = 12345 # Integer | The ID of the company.
product_id = 56 # Integer | The ID of the product.

begin
  # Delete Product
  api_instance.delete_product(company_id, product_id)
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_product_with_http_info(company_id, product_id)

```ruby
begin
  # Delete Product
  data, status_code, headers = api_instance.delete_product_with_http_info(company_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **product_id** | **Integer** | The ID of the product. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_product

> <GetProductResponse> get_product(company_id, product_id, opts)

Get Product

Gets the specified product.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloudSdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloudSdk::ProductsApi.new
company_id = 12345 # Integer | The ID of the company.
product_id = 56 # Integer | The ID of the product.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Product
  result = api_instance.get_product(company_id, product_id, opts)
  p result
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductResponse>, Integer, Hash)> get_product_with_http_info(company_id, product_id, opts)

```ruby
begin
  # Get Product
  data, status_code, headers = api_instance.get_product_with_http_info(company_id, product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductResponse>
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **product_id** | **Integer** | The ID of the product. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**GetProductResponse**](GetProductResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_products

> <ListProductsResponse> list_products(company_id, opts)

List Products

Lists the products.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloudSdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloudSdk::ProductsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56 # Integer | The size of the page.
}

begin
  # List Products
  result = api_instance.list_products(company_id, opts)
  p result
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->list_products: #{e}"
end
```

#### Using the list_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductsResponse>, Integer, Hash)> list_products_with_http_info(company_id, opts)

```ruby
begin
  # List Products
  data, status_code, headers = api_instance.list_products_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductsResponse>
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->list_products_with_http_info: #{e}"
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

[**ListProductsResponse**](ListProductsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_product

> <ModifyProductResponse> modify_product(company_id, product_id, opts)

Modify Product

Modifies the specified product.

### Examples

```ruby
require 'time'
require 'fattureincloud-ruby-sdk'
# setup authorization
FattureInCloudSdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloudSdk::ProductsApi.new
company_id = 12345 # Integer | The ID of the company.
product_id = 56 # Integer | The ID of the product.
opts = {
  modify_product_request: FattureInCloudSdk::ModifyProductRequest.new # ModifyProductRequest | Modified product details.
}

begin
  # Modify Product
  result = api_instance.modify_product(company_id, product_id, opts)
  p result
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->modify_product: #{e}"
end
```

#### Using the modify_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyProductResponse>, Integer, Hash)> modify_product_with_http_info(company_id, product_id, opts)

```ruby
begin
  # Modify Product
  data, status_code, headers = api_instance.modify_product_with_http_info(company_id, product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyProductResponse>
rescue FattureInCloudSdk::ApiError => e
  puts "Error when calling ProductsApi->modify_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **product_id** | **Integer** | The ID of the product. |  |
| **modify_product_request** | [**ModifyProductRequest**](ModifyProductRequest.md) | Modified product details. | [optional] |

### Return type

[**ModifyProductResponse**](ModifyProductResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

