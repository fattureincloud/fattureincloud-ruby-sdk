=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.18
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class TaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create F24
    # Creates a new F24.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateF24Request] :create_f24_request The F24 to create
    # @return [CreateF24Response]
    def create_f24(company_id, opts = {})
      data, _status_code, _headers = create_f24_with_http_info(company_id, opts)
      data
    end

    # Create F24
    # Creates a new F24.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateF24Request] :create_f24_request The F24 to create
    # @return [Array<(CreateF24Response, Integer, Hash)>] CreateF24Response data, response status code and response headers
    def create_f24_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.create_f24 ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.create_f24"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_f24_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateF24Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"TaxesApi.create_f24",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#create_f24\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete F24
    # Removes the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_f24(company_id, document_id, opts = {})
      delete_f24_with_http_info(company_id, document_id, opts)
      nil
    end

    # Delete F24
    # Removes the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_f24_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.delete_f24 ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.delete_f24"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling TaxesApi.delete_f24"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
        :operation => :"TaxesApi.delete_f24",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#delete_f24\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete F24 Attachment
    # Removes the attachment of the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_f24_attachment(company_id, document_id, opts = {})
      delete_f24_attachment_with_http_info(company_id, document_id, opts)
      nil
    end

    # Delete F24 Attachment
    # Removes the attachment of the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_f24_attachment_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.delete_f24_attachment ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.delete_f24_attachment"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling TaxesApi.delete_f24_attachment"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes/{document_id}/attachment'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
        :operation => :"TaxesApi.delete_f24_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#delete_f24_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get F24
    # Gets the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetF24Response]
    def get_f24(company_id, document_id, opts = {})
      data, _status_code, _headers = get_f24_with_http_info(company_id, document_id, opts)
      data
    end

    # Get F24
    # Gets the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetF24Response, Integer, Hash)>] GetF24Response data, response status code and response headers
    def get_f24_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.get_f24 ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.get_f24"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling TaxesApi.get_f24"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetF24Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"TaxesApi.get_f24",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_f24\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List F24
    # Lists the F24s.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [ListF24Response]
    def list_f24(company_id, opts = {})
      data, _status_code, _headers = list_f24_with_http_info(company_id, opts)
      data
    end

    # List F24
    # Lists the F24s.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [Array<(ListF24Response, Integer, Hash)>] ListF24Response data, response status code and response headers
    def list_f24_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.list_f24 ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.list_f24"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'fieldset'] = opts[:'fieldset'] if !opts[:'fieldset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListF24Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"TaxesApi.list_f24",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#list_f24\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify F24
    # Modifies the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyF24Request] :modify_f24_request The F24
    # @return [ModifyF24Response]
    def modify_f24(company_id, document_id, opts = {})
      data, _status_code, _headers = modify_f24_with_http_info(company_id, document_id, opts)
      data
    end

    # Modify F24
    # Modifies the specified F24.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyF24Request] :modify_f24_request The F24
    # @return [Array<(ModifyF24Response, Integer, Hash)>] ModifyF24Response data, response status code and response headers
    def modify_f24_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.modify_f24 ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.modify_f24"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling TaxesApi.modify_f24"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_f24_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyF24Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"TaxesApi.modify_f24",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#modify_f24\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload F24 Attachment
    # Uploads an attachment destined to a F24. The actual association between the document and the attachment must be implemented separately, using the returned token.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename Name of the file.
    # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
    # @return [UploadF24AttachmentResponse]
    def upload_f24_attachment(company_id, opts = {})
      data, _status_code, _headers = upload_f24_attachment_with_http_info(company_id, opts)
      data
    end

    # Upload F24 Attachment
    # Uploads an attachment destined to a F24. The actual association between the document and the attachment must be implemented separately, using the returned token.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename Name of the file.
    # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
    # @return [Array<(UploadF24AttachmentResponse, Integer, Hash)>] UploadF24AttachmentResponse data, response status code and response headers
    def upload_f24_attachment_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.upload_f24_attachment ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling TaxesApi.upload_f24_attachment"
      end
      # resource path
      local_var_path = '/c/{company_id}/taxes/attachment'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UploadF24AttachmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"TaxesApi.upload_f24_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#upload_f24_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
