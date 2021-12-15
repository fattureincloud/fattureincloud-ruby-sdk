# module_name::ClientsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_client**](ClientsApi.md#create_client) | **POST** /c/{company_id}/entities/clients | Create Client |
| [**delete_client**](ClientsApi.md#delete_client) | **DELETE** /c/{company_id}/entities/clients/{client_id} | Delete Client |
| [**get_client**](ClientsApi.md#get_client) | **GET** /c/{company_id}/entities/clients/{client_id} | Get Client |
| [**list_clients**](ClientsApi.md#list_clients) | **GET** /c/{company_id}/entities/clients | List Clients |
| [**modify_client**](ClientsApi.md#modify_client) | **PUT** /c/{company_id}/entities/clients/{client_id} | Modify Client |


## create_client

> <CreateClientResponse> create_client(company_id, opts)

Create Client

Creates a new client.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::ClientsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_client_request: module_name::CreateClientRequest.new # CreateClientRequest | The client to create
}

begin
  # Create Client
  result = api_instance.create_client(company_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->create_client: #{e}"
end
```

#### Using the create_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateClientResponse>, Integer, Hash)> create_client_with_http_info(company_id, opts)

```ruby
begin
  # Create Client
  data, status_code, headers = api_instance.create_client_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateClientResponse>
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->create_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_client_request** | [**CreateClientRequest**](CreateClientRequest.md) | The client to create | [optional] |

### Return type

[**CreateClientResponse**](CreateClientResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_client

> delete_client(company_id, client_id)

Delete Client

Deletes the specified client.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::ClientsApi.new
company_id = 12345 # Integer | The ID of the company.
client_id = 56 # Integer | The ID of the client.

begin
  # Delete Client
  api_instance.delete_client(company_id, client_id)
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->delete_client: #{e}"
end
```

#### Using the delete_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_client_with_http_info(company_id, client_id)

```ruby
begin
  # Delete Client
  data, status_code, headers = api_instance.delete_client_with_http_info(company_id, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->delete_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **client_id** | **Integer** | The ID of the client. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_client

> <GetClientResponse> get_client(company_id, client_id, opts)

Get Client

Gets the specified client.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::ClientsApi.new
company_id = 12345 # Integer | The ID of the company.
client_id = 56 # Integer | The ID of the client.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Client
  result = api_instance.get_client(company_id, client_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClientResponse>, Integer, Hash)> get_client_with_http_info(company_id, client_id, opts)

```ruby
begin
  # Get Client
  data, status_code, headers = api_instance.get_client_with_http_info(company_id, client_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClientResponse>
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **client_id** | **Integer** | The ID of the client. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**GetClientResponse**](GetClientResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_clients

> <ListClientsResponse> list_clients(company_id, opts)

List Clients

Lists the clients.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::ClientsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56 # Integer | The size of the page.
}

begin
  # List Clients
  result = api_instance.list_clients(company_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->list_clients: #{e}"
end
```

#### Using the list_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListClientsResponse>, Integer, Hash)> list_clients_with_http_info(company_id, opts)

```ruby
begin
  # List Clients
  data, status_code, headers = api_instance.list_clients_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListClientsResponse>
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->list_clients_with_http_info: #{e}"
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

[**ListClientsResponse**](ListClientsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_client

> <ModifyClientResponse> modify_client(company_id, client_id, opts)

Modify Client

Modifies the specified client.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::ClientsApi.new
company_id = 12345 # Integer | The ID of the company.
client_id = 56 # Integer | The ID of the client.
opts = {
  modify_client_request: module_name::ModifyClientRequest.new # ModifyClientRequest | The modified Client. First level parameters are managed in delta mode.
}

begin
  # Modify Client
  result = api_instance.modify_client(company_id, client_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->modify_client: #{e}"
end
```

#### Using the modify_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyClientResponse>, Integer, Hash)> modify_client_with_http_info(company_id, client_id, opts)

```ruby
begin
  # Modify Client
  data, status_code, headers = api_instance.modify_client_with_http_info(company_id, client_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyClientResponse>
rescue module_name::ApiError => e
  puts "Error when calling ClientsApi->modify_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **client_id** | **Integer** | The ID of the client. |  |
| **modify_client_request** | [**ModifyClientRequest**](ModifyClientRequest.md) | The modified Client. First level parameters are managed in delta mode. | [optional] |

### Return type

[**ModifyClientResponse**](ModifyClientResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

