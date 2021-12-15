# module_name::CompaniesApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_company_info**](CompaniesApi.md#get_company_info) | **GET** /c/{company_id}/company/info | Get Company Info |


## get_company_info

> <GetCompanyInfoResponse> get_company_info(company_id)

Get Company Info

Gets the company detailed info.

### Examples

```ruby
require 'time'
require 'gem-name'
# setup authorization
module_name.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = module_name::CompaniesApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # Get Company Info
  result = api_instance.get_company_info(company_id)
  p result
rescue module_name::ApiError => e
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
rescue module_name::ApiError => e
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

