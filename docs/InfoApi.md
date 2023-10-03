# FattureInCloud_Ruby_Sdk::InfoApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_archive_categories**](InfoApi.md#list_archive_categories) | **GET** /c/{company_id}/info/archive_categories | List Archive Categories |
| [**list_cities**](InfoApi.md#list_cities) | **GET** /info/cities | List Cities |
| [**list_cost_centers**](InfoApi.md#list_cost_centers) | **GET** /c/{company_id}/info/cost_centers | List Cost Centers |
| [**list_countries**](InfoApi.md#list_countries) | **GET** /info/countries | List Countries |
| [**list_currencies**](InfoApi.md#list_currencies) | **GET** /info/currencies | List Currencies |
| [**list_delivery_notes_default_causals**](InfoApi.md#list_delivery_notes_default_causals) | **GET** /info/dn_causals | List Delivery Notes Default Causals |
| [**list_detailed_countries**](InfoApi.md#list_detailed_countries) | **GET** /info/detailed_countries | List Detailed Countries |
| [**list_languages**](InfoApi.md#list_languages) | **GET** /info/languages | List Languages |
| [**list_payment_accounts**](InfoApi.md#list_payment_accounts) | **GET** /c/{company_id}/info/payment_accounts | List Payment Accounts |
| [**list_payment_methods**](InfoApi.md#list_payment_methods) | **GET** /c/{company_id}/info/payment_methods | List Payment Methods |
| [**list_product_categories**](InfoApi.md#list_product_categories) | **GET** /c/{company_id}/info/product_categories | List Product Categories |
| [**list_received_document_categories**](InfoApi.md#list_received_document_categories) | **GET** /c/{company_id}/info/received_document_categories | List Received Document Categories |
| [**list_revenue_centers**](InfoApi.md#list_revenue_centers) | **GET** /c/{company_id}/info/revenue_centers | List Revenue Centers |
| [**list_templates**](InfoApi.md#list_templates) | **GET** /info/templates | List Templates |
| [**list_units_of_measure**](InfoApi.md#list_units_of_measure) | **GET** /info/measures | List Units of Measure |
| [**list_vat_types**](InfoApi.md#list_vat_types) | **GET** /c/{company_id}/info/vat_types | List Vat Types |


## list_archive_categories

> <ListArchiveCategoriesResponse> list_archive_categories(company_id)

List Archive Categories

Lists the archive categories.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # List Archive Categories
  result = api_instance.list_archive_categories(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_archive_categories: #{e}"
end
```

#### Using the list_archive_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListArchiveCategoriesResponse>, Integer, Hash)> list_archive_categories_with_http_info(company_id)

```ruby
begin
  # List Archive Categories
  data, status_code, headers = api_instance.list_archive_categories_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListArchiveCategoriesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_archive_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**ListArchiveCategoriesResponse**](ListArchiveCategoriesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cities

> <ListCitiesResponse> list_cities(opts)

List Cities

Lists the Italian cities.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
opts = {
  postal_code: 'postal_code_example', # String | Postal code for filtering.
  city: 'city_example' # String | City for filtering (ignored if postal_code is passed).
}

begin
  # List Cities
  result = api_instance.list_cities(opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_cities: #{e}"
end
```

#### Using the list_cities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCitiesResponse>, Integer, Hash)> list_cities_with_http_info(opts)

```ruby
begin
  # List Cities
  data, status_code, headers = api_instance.list_cities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCitiesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_cities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postal_code** | **String** | Postal code for filtering. | [optional] |
| **city** | **String** | City for filtering (ignored if postal_code is passed). | [optional] |

### Return type

[**ListCitiesResponse**](ListCitiesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cost_centers

> <ListCostCentersResponse> list_cost_centers(company_id)

List Cost Centers

Lists the cost centers.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # List Cost Centers
  result = api_instance.list_cost_centers(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_cost_centers: #{e}"
end
```

#### Using the list_cost_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCostCentersResponse>, Integer, Hash)> list_cost_centers_with_http_info(company_id)

```ruby
begin
  # List Cost Centers
  data, status_code, headers = api_instance.list_cost_centers_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCostCentersResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_cost_centers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**ListCostCentersResponse**](ListCostCentersResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_countries

> <ListCountriesResponse> list_countries

List Countries

Lists the supported countries.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

begin
  # List Countries
  result = api_instance.list_countries
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_countries: #{e}"
end
```

#### Using the list_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCountriesResponse>, Integer, Hash)> list_countries_with_http_info

```ruby
begin
  # List Countries
  data, status_code, headers = api_instance.list_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCountriesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListCountriesResponse**](ListCountriesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_currencies

> <ListCurrenciesResponse> list_currencies

List Currencies

Lists the supported currencies.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

begin
  # List Currencies
  result = api_instance.list_currencies
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_currencies: #{e}"
end
```

#### Using the list_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCurrenciesResponse>, Integer, Hash)> list_currencies_with_http_info

```ruby
begin
  # List Currencies
  data, status_code, headers = api_instance.list_currencies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCurrenciesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_currencies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListCurrenciesResponse**](ListCurrenciesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_delivery_notes_default_causals

> <ListDeliveryNotesDefaultCausalsResponse> list_delivery_notes_default_causals

List Delivery Notes Default Causals

Lists the delivery note default causals.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

begin
  # List Delivery Notes Default Causals
  result = api_instance.list_delivery_notes_default_causals
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_delivery_notes_default_causals: #{e}"
end
```

#### Using the list_delivery_notes_default_causals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeliveryNotesDefaultCausalsResponse>, Integer, Hash)> list_delivery_notes_default_causals_with_http_info

```ruby
begin
  # List Delivery Notes Default Causals
  data, status_code, headers = api_instance.list_delivery_notes_default_causals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeliveryNotesDefaultCausalsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_delivery_notes_default_causals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListDeliveryNotesDefaultCausalsResponse**](ListDeliveryNotesDefaultCausalsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_detailed_countries

> <ListDetailedCountriesResponse> list_detailed_countries

List Detailed Countries

Lists the supported countries.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

begin
  # List Detailed Countries
  result = api_instance.list_detailed_countries
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_detailed_countries: #{e}"
end
```

#### Using the list_detailed_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDetailedCountriesResponse>, Integer, Hash)> list_detailed_countries_with_http_info

```ruby
begin
  # List Detailed Countries
  data, status_code, headers = api_instance.list_detailed_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDetailedCountriesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_detailed_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListDetailedCountriesResponse**](ListDetailedCountriesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_languages

> <ListLanguagesResponse> list_languages

List Languages

Lists the supported languages.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

begin
  # List Languages
  result = api_instance.list_languages
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_languages: #{e}"
end
```

#### Using the list_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLanguagesResponse>, Integer, Hash)> list_languages_with_http_info

```ruby
begin
  # List Languages
  data, status_code, headers = api_instance.list_languages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLanguagesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_languages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListLanguagesResponse**](ListLanguagesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_accounts

> <ListPaymentAccountsResponse> list_payment_accounts(company_id, opts)

List Payment Accounts

Lists the available payment accounts.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example' # String | List of comma-separated fields for result sorting (minus for desc sorting).
}

begin
  # List Payment Accounts
  result = api_instance.list_payment_accounts(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_payment_accounts: #{e}"
end
```

#### Using the list_payment_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentAccountsResponse>, Integer, Hash)> list_payment_accounts_with_http_info(company_id, opts)

```ruby
begin
  # List Payment Accounts
  data, status_code, headers = api_instance.list_payment_accounts_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentAccountsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_payment_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |

### Return type

[**ListPaymentAccountsResponse**](ListPaymentAccountsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_methods

> <ListPaymentMethodsResponse> list_payment_methods(company_id, opts)

List Payment Methods

Lists the available payment methods.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fields: 'fields_example', # String | List of comma-separated fields.
  fieldset: 'basic', # String | Name of the fieldset.
  sort: 'sort_example' # String | List of comma-separated fields for result sorting (minus for desc sorting).
}

begin
  # List Payment Methods
  result = api_instance.list_payment_methods(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_payment_methods: #{e}"
end
```

#### Using the list_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentMethodsResponse>, Integer, Hash)> list_payment_methods_with_http_info(company_id, opts)

```ruby
begin
  # List Payment Methods
  data, status_code, headers = api_instance.list_payment_methods_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentMethodsResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **fields** | **String** | List of comma-separated fields. | [optional] |
| **fieldset** | **String** | Name of the fieldset. | [optional] |
| **sort** | **String** | List of comma-separated fields for result sorting (minus for desc sorting). | [optional] |

### Return type

[**ListPaymentMethodsResponse**](ListPaymentMethodsResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_categories

> <ListProductCategoriesResponse> list_product_categories(company_id, context)

List Product Categories

Lists the product categories.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.
context = 'products' # String | Categories resource type.

begin
  # List Product Categories
  result = api_instance.list_product_categories(company_id, context)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_product_categories: #{e}"
end
```

#### Using the list_product_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductCategoriesResponse>, Integer, Hash)> list_product_categories_with_http_info(company_id, context)

```ruby
begin
  # List Product Categories
  data, status_code, headers = api_instance.list_product_categories_with_http_info(company_id, context)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductCategoriesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_product_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **context** | **String** | Categories resource type. |  |

### Return type

[**ListProductCategoriesResponse**](ListProductCategoriesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_received_document_categories

> <ListReceivedDocumentCategoriesResponse> list_received_document_categories(company_id)

List Received Document Categories

Lists the received document categories.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # List Received Document Categories
  result = api_instance.list_received_document_categories(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_received_document_categories: #{e}"
end
```

#### Using the list_received_document_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReceivedDocumentCategoriesResponse>, Integer, Hash)> list_received_document_categories_with_http_info(company_id)

```ruby
begin
  # List Received Document Categories
  data, status_code, headers = api_instance.list_received_document_categories_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReceivedDocumentCategoriesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_received_document_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**ListReceivedDocumentCategoriesResponse**](ListReceivedDocumentCategoriesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_revenue_centers

> <ListRevenueCentersResponse> list_revenue_centers(company_id)

List Revenue Centers

Lists the revenue centers.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.

begin
  # List Revenue Centers
  result = api_instance.list_revenue_centers(company_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_revenue_centers: #{e}"
end
```

#### Using the list_revenue_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRevenueCentersResponse>, Integer, Hash)> list_revenue_centers_with_http_info(company_id)

```ruby
begin
  # List Revenue Centers
  data, status_code, headers = api_instance.list_revenue_centers_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRevenueCentersResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_revenue_centers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |

### Return type

[**ListRevenueCentersResponse**](ListRevenueCentersResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_templates

> <ListTemplatesResponse> list_templates(opts)

List Templates

Lists the available templates.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
opts = {
  type: 'all', # String | Type of the templates.
  by_type: true # Boolean | [Only if type=all] If true, splits the list in objects, grouping templates by type.
}

begin
  # List Templates
  result = api_instance.list_templates(opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_templates: #{e}"
end
```

#### Using the list_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTemplatesResponse>, Integer, Hash)> list_templates_with_http_info(opts)

```ruby
begin
  # List Templates
  data, status_code, headers = api_instance.list_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTemplatesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the templates. | [optional][default to &#39;all&#39;] |
| **by_type** | **Boolean** | [Only if type&#x3D;all] If true, splits the list in objects, grouping templates by type. | [optional][default to false] |

### Return type

[**ListTemplatesResponse**](ListTemplatesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_units_of_measure

> <ListUnitsOfMeasureResponse> list_units_of_measure

List Units of Measure

Lists the units of measure.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

begin
  # List Units of Measure
  result = api_instance.list_units_of_measure
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_units_of_measure: #{e}"
end
```

#### Using the list_units_of_measure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnitsOfMeasureResponse>, Integer, Hash)> list_units_of_measure_with_http_info

```ruby
begin
  # List Units of Measure
  data, status_code, headers = api_instance.list_units_of_measure_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnitsOfMeasureResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_units_of_measure_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListUnitsOfMeasureResponse**](ListUnitsOfMeasureResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vat_types

> <ListVatTypesResponse> list_vat_types(company_id, opts)

List Vat Types

Lists the available vat types.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new
company_id = 12345 # Integer | The ID of the company.
opts = {
  fieldset: 'basic' # String | Name of the fieldset.
}

begin
  # List Vat Types
  result = api_instance.list_vat_types(company_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_vat_types: #{e}"
end
```

#### Using the list_vat_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVatTypesResponse>, Integer, Hash)> list_vat_types_with_http_info(company_id, opts)

```ruby
begin
  # List Vat Types
  data, status_code, headers = api_instance.list_vat_types_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVatTypesResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling InfoApi->list_vat_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **fieldset** | **String** | Name of the fieldset. | [optional] |

### Return type

[**ListVatTypesResponse**](ListVatTypesResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

