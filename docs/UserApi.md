# FattureInCloud_Ruby_Sdk::UserApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_info**](UserApi.md#get_user_info) | **GET** /user/info | Get User Info |
| [**list_user_companies**](UserApi.md#list_user_companies) | **GET** /user/companies | List User Companies |


## get_user_info

> <GetUserInfoResponse> get_user_info

Get User Info

Gets the current user's info.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::UserApi.new

begin
  # Get User Info
  result = api_instance.get_user_info
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling UserApi->get_user_info: #{e}"
end
```

#### Using the get_user_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserInfoResponse>, Integer, Hash)> get_user_info_with_http_info

```ruby
begin
  # Get User Info
  data, status_code, headers = api_instance.get_user_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserInfoResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling UserApi->get_user_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetUserInfoResponse**](GetUserInfoResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_companies

> <ListUserCompaniesResponse> list_user_companies

List User Companies

Lists the companies controlled by the current user.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::UserApi.new

begin
  # List User Companies
  result = api_instance.list_user_companies
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling UserApi->list_user_companies: #{e}"
end
```

#### Using the list_user_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUserCompaniesResponse>, Integer, Hash)> list_user_companies_with_http_info

```ruby
begin
  # List User Companies
  data, status_code, headers = api_instance.list_user_companies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUserCompaniesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling UserApi->list_user_companies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListUserCompaniesResponse**](ListUserCompaniesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

