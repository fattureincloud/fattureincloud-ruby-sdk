# FattureInCloud_Ruby_Sdk::WebhooksApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhooks_subscription**](WebhooksApi.md#create_webhooks_subscription) | **POST** /c/{company_id}/subscriptions | Create a Webhook Subscription |
| [**delete_webhooks_subscription**](WebhooksApi.md#delete_webhooks_subscription) | **DELETE** /c/{company_id}/subscriptions/{subscription_id} | Delete Webhooks Subscription |
| [**get_webhooks_subscription**](WebhooksApi.md#get_webhooks_subscription) | **GET** /c/{company_id}/subscriptions/{subscription_id} | Get Webhooks Subscription |
| [**list_webhooks_subscriptions**](WebhooksApi.md#list_webhooks_subscriptions) | **GET** /c/{company_id}/subscriptions | List Webhooks Subscriptions |
| [**modify_webhooks_subscription**](WebhooksApi.md#modify_webhooks_subscription) | **PUT** /c/{company_id}/subscriptions/{subscription_id} | Modify Webhooks Subscription |


## create_webhooks_subscription

> <CreateWebhooksSubscriptionResponse> create_webhooks_subscription(company_id, opts)

Create a Webhook Subscription

Register some webhooks Subscriptions.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::WebhooksApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  create_webhooks_subscription_request: FattureInCloud_Ruby_Sdk::CreateWebhooksSubscriptionRequest.new # CreateWebhooksSubscriptionRequest | 
}

begin
  # Create a Webhook Subscription
  result = api_instance.create_webhooks_subscription(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->create_webhooks_subscription: #{e}"
end
```

#### Using the create_webhooks_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhooksSubscriptionResponse>, Integer, Hash)> create_webhooks_subscription_with_http_info(company_id, opts)

```ruby
begin
  # Create a Webhook Subscription
  data, status_code, headers = api_instance.create_webhooks_subscription_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhooksSubscriptionResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->create_webhooks_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **create_webhooks_subscription_request** | [**CreateWebhooksSubscriptionRequest**](CreateWebhooksSubscriptionRequest.md) |  | [optional] |

### Return type

[**CreateWebhooksSubscriptionResponse**](CreateWebhooksSubscriptionResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhooks_subscription

> delete_webhooks_subscription(company_id, subscription_id)

Delete Webhooks Subscription

Delete a webhooks subscription.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::WebhooksApi.new
company_id = 12345 # Integer | The ID of the company.
subscription_id = 'SUB123' # String | The ID of the subscription.

begin
  # Delete Webhooks Subscription
  api_instance.delete_webhooks_subscription(company_id, subscription_id)
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhooks_subscription: #{e}"
end
```

#### Using the delete_webhooks_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhooks_subscription_with_http_info(company_id, subscription_id)

```ruby
begin
  # Delete Webhooks Subscription
  data, status_code, headers = api_instance.delete_webhooks_subscription_with_http_info(company_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhooks_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **subscription_id** | **String** | The ID of the subscription. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_webhooks_subscription

> <GetWebhooksSubscriptionResponse> get_webhooks_subscription(company_id, subscription_id)

Get Webhooks Subscription

Get a webhooks subscription.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::WebhooksApi.new
company_id = 12345 # Integer | The ID of the company.
subscription_id = 'SUB123' # String | The ID of the subscription.

begin
  # Get Webhooks Subscription
  result = api_instance.get_webhooks_subscription(company_id, subscription_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_subscription: #{e}"
end
```

#### Using the get_webhooks_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksSubscriptionResponse>, Integer, Hash)> get_webhooks_subscription_with_http_info(company_id, subscription_id)

```ruby
begin
  # Get Webhooks Subscription
  data, status_code, headers = api_instance.get_webhooks_subscription_with_http_info(company_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksSubscriptionResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **subscription_id** | **String** | The ID of the subscription. |  |

### Return type

[**GetWebhooksSubscriptionResponse**](GetWebhooksSubscriptionResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks_subscriptions

> <ListWebhooksSubscriptionsResponse> list_webhooks_subscriptions(company_id)

List Webhooks Subscriptions

List active webhooks subscriptions.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::WebhooksApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # List Webhooks Subscriptions
  result = api_instance.list_webhooks_subscriptions(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_subscriptions: #{e}"
end
```

#### Using the list_webhooks_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhooksSubscriptionsResponse>, Integer, Hash)> list_webhooks_subscriptions_with_http_info(company_id)

```ruby
begin
  # List Webhooks Subscriptions
  data, status_code, headers = api_instance.list_webhooks_subscriptions_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhooksSubscriptionsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**ListWebhooksSubscriptionsResponse**](ListWebhooksSubscriptionsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_webhooks_subscription

> <ModifyWebhooksSubscriptionResponse> modify_webhooks_subscription(company_id, subscription_id, opts)

Modify Webhooks Subscription

Edit a webhooks subscription.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::WebhooksApi.new
company_id = 12345 # Integer | The ID of the company.
subscription_id = 'SUB123' # String | The ID of the subscription.
opts = {
  modify_webhooks_subscription_request: FattureInCloud_Ruby_Sdk::ModifyWebhooksSubscriptionRequest.new # ModifyWebhooksSubscriptionRequest | 
}

begin
  # Modify Webhooks Subscription
  result = api_instance.modify_webhooks_subscription(company_id, subscription_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->modify_webhooks_subscription: #{e}"
end
```

#### Using the modify_webhooks_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifyWebhooksSubscriptionResponse>, Integer, Hash)> modify_webhooks_subscription_with_http_info(company_id, subscription_id, opts)

```ruby
begin
  # Modify Webhooks Subscription
  data, status_code, headers = api_instance.modify_webhooks_subscription_with_http_info(company_id, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifyWebhooksSubscriptionResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling WebhooksApi->modify_webhooks_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **subscription_id** | **String** | The ID of the subscription. |  |
| **modify_webhooks_subscription_request** | [**ModifyWebhooksSubscriptionRequest**](ModifyWebhooksSubscriptionRequest.md) |  | [optional] |

### Return type

[**ModifyWebhooksSubscriptionResponse**](ModifyWebhooksSubscriptionResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

