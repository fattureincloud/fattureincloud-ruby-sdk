# FattureInCloud_Ruby_Sdk::PriceListsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_price_list_items**](PriceListsApi.md#get_price_list_items) | **GET** /c/{company_id}/price_lists/{price_list_id}/items | Get PriceList Items List |
| [**get_price_lists**](PriceListsApi.md#get_price_lists) | **GET** /c/{company_id}/price_lists | Get PriceLists |


## get_price_list_items

> <GetPriceListItemsResponse> get_price_list_items(company_id, price_list_id)

Get PriceList Items List

Retrieves all the Items of a PriceList

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::PriceListsApi.new
company_id = 12345 # Integer | The ID of the company.
price_list_id = 'price_list_id_example' # String | The ID of the price

begin
  # Get PriceList Items List
  result = api_instance.get_price_list_items(company_id, price_list_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling PriceListsApi->get_price_list_items: #{e}"
end
```

#### Using the get_price_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPriceListItemsResponse>, Integer, Hash)> get_price_list_items_with_http_info(company_id, price_list_id)

```ruby
begin
  # Get PriceList Items List
  data, status_code, headers = api_instance.get_price_list_items_with_http_info(company_id, price_list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPriceListItemsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling PriceListsApi->get_price_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **price_list_id** | **String** | The ID of the price |  |

### Return type

[**GetPriceListItemsResponse**](GetPriceListItemsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_price_lists

> <ListPriceListsResponse> get_price_lists(company_id)

Get PriceLists

Retrieves all price lists of the company

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::PriceListsApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # Get PriceLists
  result = api_instance.get_price_lists(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling PriceListsApi->get_price_lists: #{e}"
end
```

#### Using the get_price_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPriceListsResponse>, Integer, Hash)> get_price_lists_with_http_info(company_id)

```ruby
begin
  # Get PriceLists
  data, status_code, headers = api_instance.get_price_lists_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPriceListsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling PriceListsApi->get_price_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**ListPriceListsResponse**](ListPriceListsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

