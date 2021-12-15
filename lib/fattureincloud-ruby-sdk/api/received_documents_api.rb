=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.7
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module FattureInCloud::Ruby::Sdk
  class ReceivedDocumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Received Document
    # Creates a new document.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateReceivedDocumentRequest] :create_received_document_request Document to create
    # @return [CreateReceivedDocumentResponse]
    def create_received_document(company_id, opts = {})
      data, _status_code, _headers = create_received_document_with_http_info(company_id, opts)
      data
    end

    # Create Received Document
    # Creates a new document.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateReceivedDocumentRequest] :create_received_document_request Document to create
    # @return [Array<(CreateReceivedDocumentResponse, Integer, Hash)>] CreateReceivedDocumentResponse data, response status code and response headers
    def create_received_document_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.create_received_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.create_received_document"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_received_document_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateReceivedDocumentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.create_received_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#create_received_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Received Document
    # Deletes the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_received_document(company_id, document_id, opts = {})
      delete_received_document_with_http_info(company_id, document_id, opts)
      nil
    end

    # Delete Received Document
    # Deletes the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_received_document_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.delete_received_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.delete_received_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ReceivedDocumentsApi.delete_received_document"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.delete_received_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#delete_received_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Received Document Attachment
    # Removes the attachment of the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_received_document_attachment(company_id, document_id, opts = {})
      delete_received_document_attachment_with_http_info(company_id, document_id, opts)
      nil
    end

    # Delete Received Document Attachment
    # Removes the attachment of the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_received_document_attachment_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.delete_received_document_attachment ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.delete_received_document_attachment"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ReceivedDocumentsApi.delete_received_document_attachment"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/{document_id}/attachment'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.delete_received_document_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#delete_received_document_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Existing Received Document Totals
    # Returns the totals for the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [GetExistingReceivedDocumentTotalsRequest] :get_existing_received_document_totals_request Received document.
    # @return [GetExistingReceivedDocumentTotalsResponse]
    def get_existing_received_document_totals(company_id, document_id, opts = {})
      data, _status_code, _headers = get_existing_received_document_totals_with_http_info(company_id, document_id, opts)
      data
    end

    # Get Existing Received Document Totals
    # Returns the totals for the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [GetExistingReceivedDocumentTotalsRequest] :get_existing_received_document_totals_request Received document.
    # @return [Array<(GetExistingReceivedDocumentTotalsResponse, Integer, Hash)>] GetExistingReceivedDocumentTotalsResponse data, response status code and response headers
    def get_existing_received_document_totals_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.get_existing_received_document_totals ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.get_existing_received_document_totals"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ReceivedDocumentsApi.get_existing_received_document_totals"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/{document_id}/totals'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_existing_received_document_totals_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetExistingReceivedDocumentTotalsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.get_existing_received_document_totals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#get_existing_received_document_totals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get New Received Document Totals
    # Returns the totals for a new document.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [GetNewReceivedDocumentTotalsRequest] :get_new_received_document_totals_request Received document.
    # @return [GetNewReceivedDocumentTotalsResponse]
    def get_new_received_document_totals(company_id, opts = {})
      data, _status_code, _headers = get_new_received_document_totals_with_http_info(company_id, opts)
      data
    end

    # Get New Received Document Totals
    # Returns the totals for a new document.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [GetNewReceivedDocumentTotalsRequest] :get_new_received_document_totals_request Received document.
    # @return [Array<(GetNewReceivedDocumentTotalsResponse, Integer, Hash)>] GetNewReceivedDocumentTotalsResponse data, response status code and response headers
    def get_new_received_document_totals_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.get_new_received_document_totals ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.get_new_received_document_totals"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/totals'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_new_received_document_totals_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetNewReceivedDocumentTotalsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.get_new_received_document_totals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#get_new_received_document_totals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Received Document
    # Gets the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetReceivedDocumentResponse]
    def get_received_document(company_id, document_id, opts = {})
      data, _status_code, _headers = get_received_document_with_http_info(company_id, document_id, opts)
      data
    end

    # Get Received Document
    # Gets the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetReceivedDocumentResponse, Integer, Hash)>] GetReceivedDocumentResponse data, response status code and response headers
    def get_received_document_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.get_received_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.get_received_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ReceivedDocumentsApi.get_received_document"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'fieldset'] = opts[:'fieldset'] if !opts[:'fieldset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetReceivedDocumentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.get_received_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#get_received_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Received Document Pre-Create Info
    # Retrieves the information useful while creating a new document.
    # @param company_id [Integer] The ID of the company.
    # @param type [String] The type of the received document.
    # @param [Hash] opts the optional parameters
    # @return [GetReceivedDocumentPreCreateInfoResponse]
    def get_received_document_pre_create_info(company_id, type, opts = {})
      data, _status_code, _headers = get_received_document_pre_create_info_with_http_info(company_id, type, opts)
      data
    end

    # Get Received Document Pre-Create Info
    # Retrieves the information useful while creating a new document.
    # @param company_id [Integer] The ID of the company.
    # @param type [String] The type of the received document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetReceivedDocumentPreCreateInfoResponse, Integer, Hash)>] GetReceivedDocumentPreCreateInfoResponse data, response status code and response headers
    def get_received_document_pre_create_info_with_http_info(company_id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.get_received_document_pre_create_info ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.get_received_document_pre_create_info"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling ReceivedDocumentsApi.get_received_document_pre_create_info"
      end
      # verify enum value
      allowable_values = ["expense", "passive_credit_note", "passive_delivery_note"]
      if @api_client.config.client_side_validation && !allowable_values.include?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/info'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = type

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetReceivedDocumentPreCreateInfoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.get_received_document_pre_create_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#get_received_document_pre_create_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Received Documents
    # Lists the received documents.
    # @param company_id [Integer] The ID of the company.
    # @param type [String] The type of the received document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @return [ListReceivedDocumentsResponse]
    def list_received_documents(company_id, type, opts = {})
      data, _status_code, _headers = list_received_documents_with_http_info(company_id, type, opts)
      data
    end

    # List Received Documents
    # Lists the received documents.
    # @param company_id [Integer] The ID of the company.
    # @param type [String] The type of the received document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve.
    # @option opts [Integer] :per_page The size of the page.
    # @return [Array<(ListReceivedDocumentsResponse, Integer, Hash)>] ListReceivedDocumentsResponse data, response status code and response headers
    def list_received_documents_with_http_info(company_id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.list_received_documents ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.list_received_documents"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling ReceivedDocumentsApi.list_received_documents"
      end
      # verify enum value
      allowable_values = ["expense", "passive_credit_note", "passive_delivery_note"]
      if @api_client.config.client_side_validation && !allowable_values.include?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = type
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'fieldset'] = opts[:'fieldset'] if !opts[:'fieldset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListReceivedDocumentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.list_received_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#list_received_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Received Document
    # Modifies the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyReceivedDocumentRequest] :modify_received_document_request Modified document.
    # @return [ModifyReceivedDocumentResponse]
    def modify_received_document(company_id, document_id, opts = {})
      data, _status_code, _headers = modify_received_document_with_http_info(company_id, document_id, opts)
      data
    end

    # Modify Received Document
    # Modifies the specified document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyReceivedDocumentRequest] :modify_received_document_request Modified document.
    # @return [Array<(ModifyReceivedDocumentResponse, Integer, Hash)>] ModifyReceivedDocumentResponse data, response status code and response headers
    def modify_received_document_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.modify_received_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.modify_received_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ReceivedDocumentsApi.modify_received_document"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_received_document_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyReceivedDocumentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.modify_received_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#modify_received_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload Received Document Attachment
    # Uploads an attachment destined to a received document. The actual association between the document and the attachment must be implemented separately, using the returned token.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename Name of the file.
    # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
    # @return [UploadReceivedDocumentAttachmentResponse]
    def upload_received_document_attachment(company_id, opts = {})
      data, _status_code, _headers = upload_received_document_attachment_with_http_info(company_id, opts)
      data
    end

    # Upload Received Document Attachment
    # Uploads an attachment destined to a received document. The actual association between the document and the attachment must be implemented separately, using the returned token.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename Name of the file.
    # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
    # @return [Array<(UploadReceivedDocumentAttachmentResponse, Integer, Hash)>] UploadReceivedDocumentAttachmentResponse data, response status code and response headers
    def upload_received_document_attachment_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceivedDocumentsApi.upload_received_document_attachment ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ReceivedDocumentsApi.upload_received_document_attachment"
      end
      # resource path
      local_var_path = '/c/{company_id}/received_documents/attachment'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['filename'] = opts[:'filename'] if !opts[:'filename'].nil?
      form_params['attachment'] = opts[:'attachment'] if !opts[:'attachment'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UploadReceivedDocumentAttachmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ReceivedDocumentsApi.upload_received_document_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceivedDocumentsApi#upload_received_document_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
