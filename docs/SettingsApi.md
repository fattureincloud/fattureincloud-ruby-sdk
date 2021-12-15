# module_name::SettingsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_account**](SettingsApi.md#create_payment_account) | **POST** /c/{company_id}/settings/payment_accounts | Create Payment Account |
| [**create_payment_method**](SettingsApi.md#create_payment_method) | **POST** /c/{company_id}/settings/payment_methods | Create Payment Method |
| [**create_vat_type**](SettingsApi.md#create_vat_type) | **POST** /c/{company_id}/settings/vat_types | Create Vat Type |
| [**delete_payment_account**](SettingsApi.md#delete_payment_account) | **DELETE** /c/{company_id}/settings/payment_accounts/{payment_account_id} | Delete Payment Account |
| [**delete_payment_method**](SettingsApi.md#delete_payment_method) | **DELETE** /c/{company_id}/settings/payment_methods/{payment_method_id} | Delete Payment Method |
| [**delete_vat_type**](SettingsApi.md#delete_vat_type) | **DELETE** /c/{company_id}/settings/vat_types/{vat_type_id} | Delete Vat Type |
| [**get_payment_account**](SettingsApi.md#get_payment_account) | **GET** /c/{company_id}/settings/payment_accounts/{payment_account_id} | Get Payment Account |
| [**get_payment_method**](SettingsApi.md#get_payment_method) | **GET** /c/{company_id}/settings/payment_methods/{payment_method_id} | Get Payment Method |
| [**get_vat_type**](SettingsApi.md#get_vat_type) | **GET** /c/{company_id}/settings/vat_types/{vat_type_id} | Get Vat Type |
| [**modify_payment_account**](SettingsApi.md#modify_payment_account) | **PUT** /c/{company_id}/settings/payment_accounts/{payment_account_id} | Modify Payment Account |
| [**modify_payment_method**](SettingsApi.md#modify_payment_method) | **PUT** /c/{company_id}/settings/payment_methods/{payment_method_id} | Modify Payment Method |
| [**modify_vat_type**](SettingsApi.md#modify_vat_type) | **PUT** /c/{company_id}/settings/vat_types/{vat_type_id} | Modify Vat Type |


## create_payment_account

> <CreatePaymentAccountResponse> create_payment_account(company_id, opts)

Create Payment Account

Creates a new payment account.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_payment_account_request: module_name::CreatePaymentAccountRequest.new # CreatePaymentAccountRequest | 
}

begin
  # Create Payment Account
  result = api_instance.create_payment_account(company_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->create_payment_account: #{e}"
end
```

#### Using the create_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePaymentAccountResponse>, Integer, Hash)> create_payment_account_with_http_info(company_id, opts)

```ruby
begin
  # Create Payment Account
  data, status_code, headers = api_instance.create_payment_account_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePaymentAccountResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->create_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_payment_account_request** | [**CreatePaymentAccountRequest**](CreatePaymentAccountRequest.md) |  | [optional] |

### Return type

[**CreatePaymentAccountResponse**](CreatePaymentAccountResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment_method

> <CreatePaymentMethodResponse> create_payment_method(company_id, opts)

Create Payment Method

Creates a new payment method.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_payment_method_request: module_name::CreatePaymentMethodRequest.new # CreatePaymentMethodRequest | 
}

begin
  # Create Payment Method
  result = api_instance.create_payment_method(company_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->create_payment_method: #{e}"
end
```

#### Using the create_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePaymentMethodResponse>, Integer, Hash)> create_payment_method_with_http_info(company_id, opts)

```ruby
begin
  # Create Payment Method
  data, status_code, headers = api_instance.create_payment_method_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePaymentMethodResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->create_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_payment_method_request** | [**CreatePaymentMethodRequest**](CreatePaymentMethodRequest.md) |  | [optional] |

### Return type

[**CreatePaymentMethodResponse**](CreatePaymentMethodResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vat_type

> <CreateVatTypeResponse> create_vat_type(company_id, opts)

Create Vat Type

Creates a vat type.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_vat_type_request: module_name::CreateVatTypeRequest.new # CreateVatTypeRequest | 
}

begin
  # Create Vat Type
  result = api_instance.create_vat_type(company_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->create_vat_type: #{e}"
end
```

#### Using the create_vat_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVatTypeResponse>, Integer, Hash)> create_vat_type_with_http_info(company_id, opts)

```ruby
begin
  # Create Vat Type
  data, status_code, headers = api_instance.create_vat_type_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVatTypeResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->create_vat_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_vat_type_request** | [**CreateVatTypeRequest**](CreateVatTypeRequest.md) |  | [optional] |

### Return type

[**CreateVatTypeResponse**](CreateVatTypeResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json, application/xml, multipart/form-data
- **Accept**: application/json


## delete_payment_account

> delete_payment_account(company_id, payment_account_id)

Delete Payment Account

Deletes the specified payment account.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
payment_account_id = 56 # Integer | The Referred Payment Account Id.

begin
  # Delete Payment Account
  api_instance.delete_payment_account(company_id, payment_account_id)
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->delete_payment_account: #{e}"
end
```

#### Using the delete_payment_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_account_with_http_info(company_id, payment_account_id)

```ruby
begin
  # Delete Payment Account
  data, status_code, headers = api_instance.delete_payment_account_with_http_info(company_id, payment_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->delete_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **payment_account_id** | **Integer** | The Referred Payment Account Id. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_payment_method

> delete_payment_method(company_id, payment_method_id)

Delete Payment Method

Deletes the specified payment method.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
payment_method_id = 56 # Integer | The Referred Payment Method Id.

begin
  # Delete Payment Method
  api_instance.delete_payment_method(company_id, payment_method_id)
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->delete_payment_method: #{e}"
end
```

#### Using the delete_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_method_with_http_info(company_id, payment_method_id)

```ruby
begin
  # Delete Payment Method
  data, status_code, headers = api_instance.delete_payment_method_with_http_info(company_id, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->delete_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **payment_method_id** | **Integer** | The Referred Payment Method Id. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_vat_type

> delete_vat_type(company_id, vat_type_id)

Delete Vat Type

Deletes the specified vat type.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
vat_type_id = 56 # Integer | The Referred Vat Type Id.

begin
  # Delete Vat Type
  api_instance.delete_vat_type(company_id, vat_type_id)
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->delete_vat_type: #{e}"
end
```

#### Using the delete_vat_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vat_type_with_http_info(company_id, vat_type_id)

```ruby
begin
  # Delete Vat Type
  data, status_code, headers = api_instance.delete_vat_type_with_http_info(company_id, vat_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->delete_vat_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **vat_type_id** | **Integer** | The Referred Vat Type Id. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payment_account

> <GetPaymentAccountResponse> get_payment_account(company_id, payment_account_id, opts)

Get Payment Account

Gets the specified payment account.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
payment_account_id = 56 # Integer | The Referred Payment Account Id.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Payment Account
  result = api_instance.get_payment_account(company_id, payment_account_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->get_payment_account: #{e}"
end
```

#### Using the get_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentAccountResponse>, Integer, Hash)> get_payment_account_with_http_info(company_id, payment_account_id, opts)

```ruby
begin
  # Get Payment Account
  data, status_code, headers = api_instance.get_payment_account_with_http_info(company_id, payment_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentAccountResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->get_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **payment_account_id** | **Integer** | The Referred Payment Account Id. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**GetPaymentAccountResponse**](GetPaymentAccountResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_method

> <GetPaymentMethodResponse> get_payment_method(company_id, payment_method_id, opts)

Get Payment Method

Gets the specified payment method.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
payment_method_id = 56 # Integer | The Referred Payment Method Id.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # Get Payment Method
  result = api_instance.get_payment_method(company_id, payment_method_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentMethodResponse>, Integer, Hash)> get_payment_method_with_http_info(company_id, payment_method_id, opts)

```ruby
begin
  # Get Payment Method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(company_id, payment_method_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentMethodResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **payment_method_id** | **Integer** | The Referred Payment Method Id. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**GetPaymentMethodResponse**](GetPaymentMethodResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vat_type

> <GetVatTypeResponse> get_vat_type(company_id, vat_type_id)

Get Vat Type

Gets the specified vat type.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
vat_type_id = 56 # Integer | The Referred Vat Type Id.

begin
  # Get Vat Type
  result = api_instance.get_vat_type(company_id, vat_type_id)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->get_vat_type: #{e}"
end
```

#### Using the get_vat_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVatTypeResponse>, Integer, Hash)> get_vat_type_with_http_info(company_id, vat_type_id)

```ruby
begin
  # Get Vat Type
  data, status_code, headers = api_instance.get_vat_type_with_http_info(company_id, vat_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVatTypeResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->get_vat_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **vat_type_id** | **Integer** | The Referred Vat Type Id. |  |

### Return type

[**GetVatTypeResponse**](GetVatTypeResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_payment_account

> <ModifyPaymentAccountResponse> modify_payment_account(company_id, payment_account_id, opts)

Modify Payment Account

Modifies the specified payment account.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
payment_account_id = 56 # Integer | The Referred Payment Account Id.
opts = {
  modify_payment_account_request: module_name::ModifyPaymentAccountRequest.new # ModifyPaymentAccountRequest | 
}

begin
  # Modify Payment Account
  result = api_instance.modify_payment_account(company_id, payment_account_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->modify_payment_account: #{e}"
end
```

#### Using the modify_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyPaymentAccountResponse>, Integer, Hash)> modify_payment_account_with_http_info(company_id, payment_account_id, opts)

```ruby
begin
  # Modify Payment Account
  data, status_code, headers = api_instance.modify_payment_account_with_http_info(company_id, payment_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyPaymentAccountResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->modify_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **payment_account_id** | **Integer** | The Referred Payment Account Id. |  |
| **modify_payment_account_request** | [**ModifyPaymentAccountRequest**](ModifyPaymentAccountRequest.md) |  | [optional] |

### Return type

[**ModifyPaymentAccountResponse**](ModifyPaymentAccountResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_payment_method

> <ModifyPaymentMethodResponse> modify_payment_method(company_id, payment_method_id, opts)

Modify Payment Method

Modifies the specified payment method.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
payment_method_id = 56 # Integer | The Referred Payment Method Id.
opts = {
  modify_payment_method_request: module_name::ModifyPaymentMethodRequest.new # ModifyPaymentMethodRequest | 
}

begin
  # Modify Payment Method
  result = api_instance.modify_payment_method(company_id, payment_method_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->modify_payment_method: #{e}"
end
```

#### Using the modify_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyPaymentMethodResponse>, Integer, Hash)> modify_payment_method_with_http_info(company_id, payment_method_id, opts)

```ruby
begin
  # Modify Payment Method
  data, status_code, headers = api_instance.modify_payment_method_with_http_info(company_id, payment_method_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyPaymentMethodResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->modify_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **payment_method_id** | **Integer** | The Referred Payment Method Id. |  |
| **modify_payment_method_request** | [**ModifyPaymentMethodRequest**](ModifyPaymentMethodRequest.md) |  | [optional] |

### Return type

[**ModifyPaymentMethodResponse**](ModifyPaymentMethodResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_vat_type

> <ModifyVatTypeResponse> modify_vat_type(company_id, vat_type_id, opts)

Modify Vat Type

Modifies the specified vat type.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::SettingsApi.new
company_id = 12345 # Integer | The ID of the company.
vat_type_id = 56 # Integer | The Referred Vat Type Id.
opts = {
  modify_vat_type_request: module_name::ModifyVatTypeRequest.new # ModifyVatTypeRequest | 
}

begin
  # Modify Vat Type
  result = api_instance.modify_vat_type(company_id, vat_type_id, opts)
  p result
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->modify_vat_type: #{e}"
end
```

#### Using the modify_vat_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyVatTypeResponse>, Integer, Hash)> modify_vat_type_with_http_info(company_id, vat_type_id, opts)

```ruby
begin
  # Modify Vat Type
  data, status_code, headers = api_instance.modify_vat_type_with_http_info(company_id, vat_type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyVatTypeResponse>
rescue module_name::ApiError => e
  puts "Error when calling SettingsApi->modify_vat_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **vat_type_id** | **Integer** | The Referred Vat Type Id. |  |
| **modify_vat_type_request** | [**ModifyVatTypeRequest**](ModifyVatTypeRequest.md) |  | [optional] |

### Return type

[**ModifyVatTypeResponse**](ModifyVatTypeResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

