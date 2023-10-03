=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.30
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class IssuedEInvoicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get E-Invoice Rejection Reason
    # Get e-invoice rejection reason
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [GetEInvoiceRejectionReasonResponse]
    def get_e_invoice_rejection_reason(company_id, document_id, opts = {})
      data, _status_code, _headers = get_e_invoice_rejection_reason_with_http_info(company_id, document_id, opts)
      data
    end

    # Get E-Invoice Rejection Reason
    # Get e-invoice rejection reason
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEInvoiceRejectionReasonResponse, Integer, Hash)>] GetEInvoiceRejectionReasonResponse data, response status code and response headers
    def get_e_invoice_rejection_reason_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssuedEInvoicesApi.get_e_invoice_rejection_reason ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling IssuedEInvoicesApi.get_e_invoice_rejection_reason"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling IssuedEInvoicesApi.get_e_invoice_rejection_reason"
      end
      # resource path
      local_var_path = '/c/{company_id}/issued_documents/{document_id}/e_invoice/error_reason'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetEInvoiceRejectionReasonResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"IssuedEInvoicesApi.get_e_invoice_rejection_reason",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuedEInvoicesApi#get_e_invoice_rejection_reason\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get E-Invoice XML
    # Downloads the e-invoice in XML format.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_attachment Include the attachment to the XML e-invoice.
    # @return [String]
    def get_e_invoice_xml(company_id, document_id, opts = {})
      data, _status_code, _headers = get_e_invoice_xml_with_http_info(company_id, document_id, opts)
      data
    end

    # Get E-Invoice XML
    # Downloads the e-invoice in XML format.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_attachment Include the attachment to the XML e-invoice.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_e_invoice_xml_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssuedEInvoicesApi.get_e_invoice_xml ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling IssuedEInvoicesApi.get_e_invoice_xml"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling IssuedEInvoicesApi.get_e_invoice_xml"
      end
      # resource path
      local_var_path = '/c/{company_id}/issued_documents/{document_id}/e_invoice/xml'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_attachment'] = opts[:'include_attachment'] if !opts[:'include_attachment'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"IssuedEInvoicesApi.get_e_invoice_xml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuedEInvoicesApi#get_e_invoice_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send E-Invoice
    # Sends the e-invoice to SDI.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [SendEInvoiceRequest] :send_e_invoice_request 
    # @return [SendEInvoiceResponse]
    def send_e_invoice(company_id, document_id, opts = {})
      data, _status_code, _headers = send_e_invoice_with_http_info(company_id, document_id, opts)
      data
    end

    # Send E-Invoice
    # Sends the e-invoice to SDI.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [SendEInvoiceRequest] :send_e_invoice_request 
    # @return [Array<(SendEInvoiceResponse, Integer, Hash)>] SendEInvoiceResponse data, response status code and response headers
    def send_e_invoice_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssuedEInvoicesApi.send_e_invoice ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling IssuedEInvoicesApi.send_e_invoice"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling IssuedEInvoicesApi.send_e_invoice"
      end
      # resource path
      local_var_path = '/c/{company_id}/issued_documents/{document_id}/e_invoice/send'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_e_invoice_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SendEInvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"IssuedEInvoicesApi.send_e_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuedEInvoicesApi#send_e_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify E-Invoice XML
    # Verifies the e-invoice XML format. Checks if all of the mandatory fields are filled and compliant to the right format.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [VerifyEInvoiceXmlResponse]
    def verify_e_invoice_xml(company_id, document_id, opts = {})
      data, _status_code, _headers = verify_e_invoice_xml_with_http_info(company_id, document_id, opts)
      data
    end

    # Verify E-Invoice XML
    # Verifies the e-invoice XML format. Checks if all of the mandatory fields are filled and compliant to the right format.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VerifyEInvoiceXmlResponse, Integer, Hash)>] VerifyEInvoiceXmlResponse data, response status code and response headers
    def verify_e_invoice_xml_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssuedEInvoicesApi.verify_e_invoice_xml ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling IssuedEInvoicesApi.verify_e_invoice_xml"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling IssuedEInvoicesApi.verify_e_invoice_xml"
      end
      # resource path
      local_var_path = '/c/{company_id}/issued_documents/{document_id}/e_invoice/xml_verify'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VerifyEInvoiceXmlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"IssuedEInvoicesApi.verify_e_invoice_xml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuedEInvoicesApi#verify_e_invoice_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
