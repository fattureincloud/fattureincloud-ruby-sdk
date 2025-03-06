# FattureInCloud_Ruby_Sdk::EmailsApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_emails**](EmailsApi.md#list_emails) | **GET** /c/{company_id}/emails | List Emails |


## list_emails

> <ListEmailsResponse> list_emails(company_id, opts)

List Emails

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
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example', # String | List of comma-separated fields for result sorting (minus for desc sorting).
  page: 56, # Integer | The page to retrieve.
  per_page: 56, # Integer | The size of the page.
  q: 'q_example' # String | Query for filtering the results.
}

begin
  # List Emails
  result = api_instance.list_emails(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling EmailsApi->list_emails: #{e}"
end
```

#### Using the list_emails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailsResponse>, Integer, Hash)> list_emails_with_http_info(company_id, opts)

```ruby
begin
  # List Emails
  data, status_code, headers = api_instance.list_emails_with_http_info(company_id, opts)
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
| **company_id** | **Integer** | The ID of the company. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |
| **page** | **Integer** | The page to retrieve. | [optional][default to 1] |
| **per_page** | **Integer** | The size of the page. | [optional][default to 5] |
| **q** | **String** | Query for filtering the results. | [optional] |

### Return type

[**ListEmailsResponse**](ListEmailsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

