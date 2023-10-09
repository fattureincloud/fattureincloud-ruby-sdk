# FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi

All URIs are relative to *https://api-v2.fattureincloud.it*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_e_invoice_rejection_reason**](IssuedEInvoicesApi.md#get_e_invoice_rejection_reason) | **GET** /c/{company_id}/issued_documents/{document_id}/e_invoice/error_reason | Get E-Invoice Rejection Reason |
| [**get_e_invoice_xml**](IssuedEInvoicesApi.md#get_e_invoice_xml) | **GET** /c/{company_id}/issued_documents/{document_id}/e_invoice/xml | Get E-Invoice XML |
| [**send_e_invoice**](IssuedEInvoicesApi.md#send_e_invoice) | **POST** /c/{company_id}/issued_documents/{document_id}/e_invoice/send | Send E-Invoice |
| [**verify_e_invoice_xml**](IssuedEInvoicesApi.md#verify_e_invoice_xml) | **GET** /c/{company_id}/issued_documents/{document_id}/e_invoice/xml_verify | Verify E-Invoice XML |


## get_e_invoice_rejection_reason

> <GetEInvoiceRejectionReasonResponse> get_e_invoice_rejection_reason(company_id, document_id)

Get E-Invoice Rejection Reason

Get e-invoice rejection reason

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Get E-Invoice Rejection Reason
  result = api_instance.get_e_invoice_rejection_reason(company_id, document_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->get_e_invoice_rejection_reason: #{e}"
end
```

#### Using the get_e_invoice_rejection_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEInvoiceRejectionReasonResponse>, Integer, Hash)> get_e_invoice_rejection_reason_with_http_info(company_id, document_id)

```ruby
begin
  # Get E-Invoice Rejection Reason
  data, status_code, headers = api_instance.get_e_invoice_rejection_reason_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEInvoiceRejectionReasonResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->get_e_invoice_rejection_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |

### Return type

[**GetEInvoiceRejectionReasonResponse**](GetEInvoiceRejectionReasonResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_e_invoice_xml

> String get_e_invoice_xml(company_id, document_id, opts)

Get E-Invoice XML

Downloads the e-invoice in XML format.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  include_attachment: true # Boolean | Include the attachment to the XML e-invoice.
}

begin
  # Get E-Invoice XML
  result = api_instance.get_e_invoice_xml(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->get_e_invoice_xml: #{e}"
end
```

#### Using the get_e_invoice_xml_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_e_invoice_xml_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Get E-Invoice XML
  data, status_code, headers = api_instance.get_e_invoice_xml_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->get_e_invoice_xml_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **include_attachment** | **Boolean** | Include the attachment to the XML e-invoice. | [optional] |

### Return type

**String**

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## send_e_invoice

> <SendEInvoiceResponse> send_e_invoice(company_id, document_id, opts)

Send E-Invoice

Sends the e-invoice to SDI.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.
opts = {
  send_e_invoice_request: FattureInCloud_Ruby_Sdk::SendEInvoiceRequest.new # SendEInvoiceRequest | 
}

begin
  # Send E-Invoice
  result = api_instance.send_e_invoice(company_id, document_id, opts)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->send_e_invoice: #{e}"
end
```

#### Using the send_e_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEInvoiceResponse>, Integer, Hash)> send_e_invoice_with_http_info(company_id, document_id, opts)

```ruby
begin
  # Send E-Invoice
  data, status_code, headers = api_instance.send_e_invoice_with_http_info(company_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEInvoiceResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->send_e_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |
| **send_e_invoice_request** | [**SendEInvoiceRequest**](SendEInvoiceRequest.md) |  | [optional] |

### Return type

[**SendEInvoiceResponse**](SendEInvoiceResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_e_invoice_xml

> <VerifyEInvoiceXmlResponse> verify_e_invoice_xml(company_id, document_id)

Verify E-Invoice XML

Verifies the e-invoice XML format. Checks if all of the mandatory fields are filled and compliant to the right format.

### Examples

```ruby
require 'time'
require 'fattureincloud_ruby_sdk'
# setup authorization
FattureInCloud_Ruby_Sdk.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2AuthenticationCodeFlow
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi.new
company_id = 12345 # Integer | The ID of the company.
document_id = 56 # Integer | The ID of the document.

begin
  # Verify E-Invoice XML
  result = api_instance.verify_e_invoice_xml(company_id, document_id)
  p result
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->verify_e_invoice_xml: #{e}"
end
```

#### Using the verify_e_invoice_xml_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyEInvoiceXmlResponse>, Integer, Hash)> verify_e_invoice_xml_with_http_info(company_id, document_id)

```ruby
begin
  # Verify E-Invoice XML
  data, status_code, headers = api_instance.verify_e_invoice_xml_with_http_info(company_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyEInvoiceXmlResponse>
rescue FattureInCloud_Ruby_Sdk::ApiError => e
  puts "Error when calling IssuedEInvoicesApi->verify_e_invoice_xml_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | The ID of the company. |  |
| **document_id** | **Integer** | The ID of the document. |  |

### Return type

[**VerifyEInvoiceXmlResponse**](VerifyEInvoiceXmlResponse.md)

### Authorization

[OAuth2AuthenticationCodeFlow](../README.md#OAuth2AuthenticationCodeFlow)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

