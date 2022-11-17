# FattureInCloud_Ruby_Sdk::EmailsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_emails**](EmailsApi.md#list_emails) | **GET** /c/{company_id}/emails | List emails |


## list_emails

> <ListEmailsResponse> list_emails(company_id)

List emails

List Emails.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::EmailsApi.new
company_id = 12345

begin
  # List emails
  result = api_instance.list_emails(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling EmailsApi->list_emails: #{e}"
end
```

#### Using the list_emails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailsResponse>, Integer, Hash)> list_emails_with_http_info(company_id)

```ruby
begin
  # List emails
  data, status_code, headers = api_instance.list_emails_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling EmailsApi->list_emails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** |  |  |

### Return type

[**ListEmailsResponse**](ListEmailsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

