# FattureInCloud_Ruby_Sdk::CompaniesApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_company_info**](CompaniesApi.md#get_company_info) | **GET** /c/{company_id}/company/info | Get Company Info |
| [**get_company_plan_usage**](CompaniesApi.md#get_company_plan_usage) | **GET** /c/{company_id}/company/plan_usage | Get Company Plan Usage |


## get_company_info

> <GetCompanyInfoResponse> get_company_info(company_id)

Get Company Info

Gets the company detailed info.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::CompaniesApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # Get Company Info
  result = api_instance.get_company_info(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling CompaniesApi->get_company_info: #{e}"
end
```

#### Using the get_company_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCompanyInfoResponse>, Integer, Hash)> get_company_info_with_http_info(company_id)

```ruby
begin
  # Get Company Info
  data, status_code, headers = api_instance.get_company_info_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCompanyInfoResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling CompaniesApi->get_company_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**GetCompanyInfoResponse**](GetCompanyInfoResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_company_plan_usage

> <GetCompanyPlanUsageResponse> get_company_plan_usage(company_id, category)

Get Company Plan Usage

Gets the company limits usage.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::CompaniesApi.new
company_id = 12345 # Integer | The ID of the company.
category = 'clients' # String | Category

begin
  # Get Company Plan Usage
  result = api_instance.get_company_plan_usage(company_id, category)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling CompaniesApi->get_company_plan_usage: #{e}"
end
```

#### Using the get_company_plan_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCompanyPlanUsageResponse>, Integer, Hash)> get_company_plan_usage_with_http_info(company_id, category)

```ruby
begin
  # Get Company Plan Usage
  data, status_code, headers = api_instance.get_company_plan_usage_with_http_info(company_id, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCompanyPlanUsageResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling CompaniesApi->get_company_plan_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **category** | **String** | Category |  |

### Return type

[**GetCompanyPlanUsageResponse**](GetCompanyPlanUsageResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

