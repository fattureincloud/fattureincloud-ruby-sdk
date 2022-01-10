=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.8
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class ArchiveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Archive Document
    # Creates a new archive document.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateArchiveDocumentRequest] :create_archive_document_request The Archive Document.
    # @return [CreateArchiveDocumentResponse]
    def create_archive_document(company_id, opts = {})
      data, _status_code, _headers = create_archive_document_with_http_info(company_id, opts)
      data
    end

    # Create Archive Document
    # Creates a new archive document.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateArchiveDocumentRequest] :create_archive_document_request The Archive Document.
    # @return [Array<(CreateArchiveDocumentResponse, Integer, Hash)>] CreateArchiveDocumentResponse data, response status code and response headers
    def create_archive_document_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchiveApi.create_archive_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ArchiveApi.create_archive_document"
      end
      # resource path
      local_var_path = '/c/{company_id}/archive'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_archive_document_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateArchiveDocumentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ArchiveApi.create_archive_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchiveApi#create_archive_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Archive Document
    # Deletes the specified archive document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_archive_document(company_id, document_id, opts = {})
      delete_archive_document_with_http_info(company_id, document_id, opts)
      nil
    end

    # Delete Archive Document
    # Deletes the specified archive document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_archive_document_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchiveApi.delete_archive_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ArchiveApi.delete_archive_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ArchiveApi.delete_archive_document"
      end
      # resource path
      local_var_path = '/c/{company_id}/archive/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
        :operation => :"ArchiveApi.delete_archive_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchiveApi#delete_archive_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Archive Document
    # Gets the specified archive document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetArchiveDocumentResponse]
    def get_archive_document(company_id, document_id, opts = {})
      data, _status_code, _headers = get_archive_document_with_http_info(company_id, document_id, opts)
      data
    end

    # Get Archive Document
    # Gets the specified archive document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetArchiveDocumentResponse, Integer, Hash)>] GetArchiveDocumentResponse data, response status code and response headers
    def get_archive_document_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchiveApi.get_archive_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ArchiveApi.get_archive_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ArchiveApi.get_archive_document"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/archive/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetArchiveDocumentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ArchiveApi.get_archive_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchiveApi#get_archive_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Archive Documents
    # Lists the archive documents.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @return [ListArchiveDocumentsResponse]
    def list_archive_documents(company_id, opts = {})
      data, _status_code, _headers = list_archive_documents_with_http_info(company_id, opts)
      data
    end

    # List Archive Documents
    # Lists the archive documents.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve.
    # @option opts [Integer] :per_page The size of the page.
    # @return [Array<(ListArchiveDocumentsResponse, Integer, Hash)>] ListArchiveDocumentsResponse data, response status code and response headers
    def list_archive_documents_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchiveApi.list_archive_documents ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ArchiveApi.list_archive_documents"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/archive'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ListArchiveDocumentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ArchiveApi.list_archive_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchiveApi#list_archive_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Archive Document
    # Modifies the specified archive document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyArchiveDocumentRequest] :modify_archive_document_request Modified Archive Document
    # @return [ModifyArchiveDocumentResponse]
    def modify_archive_document(company_id, document_id, opts = {})
      data, _status_code, _headers = modify_archive_document_with_http_info(company_id, document_id, opts)
      data
    end

    # Modify Archive Document
    # Modifies the specified archive document.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyArchiveDocumentRequest] :modify_archive_document_request Modified Archive Document
    # @return [Array<(ModifyArchiveDocumentResponse, Integer, Hash)>] ModifyArchiveDocumentResponse data, response status code and response headers
    def modify_archive_document_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchiveApi.modify_archive_document ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ArchiveApi.modify_archive_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling ArchiveApi.modify_archive_document"
      end
      # resource path
      local_var_path = '/c/{company_id}/archive/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_archive_document_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyArchiveDocumentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ArchiveApi.modify_archive_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchiveApi#modify_archive_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload Archive Document Attachment
    # Uploads an attachment destined to an archive document. The actual association between the document and the attachment must be implemented separately, using the returned token.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename Name of the file.
    # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
    # @return [UploadArchiveAttachmentResponse]
    def upload_archive_document_attachment(company_id, opts = {})
      data, _status_code, _headers = upload_archive_document_attachment_with_http_info(company_id, opts)
      data
    end

    # Upload Archive Document Attachment
    # Uploads an attachment destined to an archive document. The actual association between the document and the attachment must be implemented separately, using the returned token.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename Name of the file.
    # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
    # @return [Array<(UploadArchiveAttachmentResponse, Integer, Hash)>] UploadArchiveAttachmentResponse data, response status code and response headers
    def upload_archive_document_attachment_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchiveApi.upload_archive_document_attachment ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ArchiveApi.upload_archive_document_attachment"
      end
      # resource path
      local_var_path = '/c/{company_id}/archive/attachment'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UploadArchiveAttachmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ArchiveApi.upload_archive_document_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchiveApi#upload_archive_document_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
