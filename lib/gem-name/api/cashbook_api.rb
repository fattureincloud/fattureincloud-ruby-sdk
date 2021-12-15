=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.7
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module module_name
  class CashbookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Cashbook Entry
    # Creates a new cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCashbookEntryRequest] :create_cashbook_entry_request Cashbook entry. 
    # @return [CreateCashbookEntryResponse]
    def create_cashbook_entry(company_id, opts = {})
      data, _status_code, _headers = create_cashbook_entry_with_http_info(company_id, opts)
      data
    end

    # Create Cashbook Entry
    # Creates a new cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCashbookEntryRequest] :create_cashbook_entry_request Cashbook entry. 
    # @return [Array<(CreateCashbookEntryResponse, Integer, Hash)>] CreateCashbookEntryResponse data, response status code and response headers
    def create_cashbook_entry_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashbookApi.create_cashbook_entry ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CashbookApi.create_cashbook_entry"
      end
      # resource path
      local_var_path = '/c/{company_id}/cashbook'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_cashbook_entry_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCashbookEntryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"CashbookApi.create_cashbook_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashbookApi#create_cashbook_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Cashbook Entry
    # Deletes the specified cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cashbook_entry(company_id, document_id, opts = {})
      delete_cashbook_entry_with_http_info(company_id, document_id, opts)
      nil
    end

    # Delete Cashbook Entry
    # Deletes the specified cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cashbook_entry_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashbookApi.delete_cashbook_entry ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CashbookApi.delete_cashbook_entry"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling CashbookApi.delete_cashbook_entry"
      end
      # resource path
      local_var_path = '/c/{company_id}/cashbook/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
        :operation => :"CashbookApi.delete_cashbook_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashbookApi#delete_cashbook_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Cashbook Entry
    # Gets the specified cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetCashbookEntryResponse]
    def get_cashbook_entry(company_id, document_id, opts = {})
      data, _status_code, _headers = get_cashbook_entry_with_http_info(company_id, document_id, opts)
      data
    end

    # Get Cashbook Entry
    # Gets the specified cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetCashbookEntryResponse, Integer, Hash)>] GetCashbookEntryResponse data, response status code and response headers
    def get_cashbook_entry_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashbookApi.get_cashbook_entry ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CashbookApi.get_cashbook_entry"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling CashbookApi.get_cashbook_entry"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/cashbook/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCashbookEntryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"CashbookApi.get_cashbook_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashbookApi#get_cashbook_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Cashbook Entries
    # Lists the cashbook entries.
    # @param company_id [Integer] The ID of the company.
    # @param date_from [String] Start date.
    # @param date_to [String] End date.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year Filter cashbook by year.
    # @option opts [String] :type Filter cashbook by type.
    # @option opts [Integer] :payment_account_id Filter by payment account.
    # @return [ListCashbookEntriesResponse]
    def list_cashbook_entries(company_id, date_from, date_to, opts = {})
      data, _status_code, _headers = list_cashbook_entries_with_http_info(company_id, date_from, date_to, opts)
      data
    end

    # List Cashbook Entries
    # Lists the cashbook entries.
    # @param company_id [Integer] The ID of the company.
    # @param date_from [String] Start date.
    # @param date_to [String] End date.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year Filter cashbook by year.
    # @option opts [String] :type Filter cashbook by type.
    # @option opts [Integer] :payment_account_id Filter by payment account.
    # @return [Array<(ListCashbookEntriesResponse, Integer, Hash)>] ListCashbookEntriesResponse data, response status code and response headers
    def list_cashbook_entries_with_http_info(company_id, date_from, date_to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashbookApi.list_cashbook_entries ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CashbookApi.list_cashbook_entries"
      end
      # verify the required parameter 'date_from' is set
      if @api_client.config.client_side_validation && date_from.nil?
        fail ArgumentError, "Missing the required parameter 'date_from' when calling CashbookApi.list_cashbook_entries"
      end
      # verify the required parameter 'date_to' is set
      if @api_client.config.client_side_validation && date_to.nil?
        fail ArgumentError, "Missing the required parameter 'date_to' when calling CashbookApi.list_cashbook_entries"
      end
      allowable_values = ["all", "in", "out"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/cashbook'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'date_from'] = date_from
      query_params[:'date_to'] = date_to
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'payment_account_id'] = opts[:'payment_account_id'] if !opts[:'payment_account_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListCashbookEntriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"CashbookApi.list_cashbook_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashbookApi#list_cashbook_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Cashbook Entry
    # Modifies the specified cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyCashbookEntryRequest] :modify_cashbook_entry_request Cashbook Entry
    # @return [ModifyCashbookEntryResponse]
    def modify_cashbook_entry(company_id, document_id, opts = {})
      data, _status_code, _headers = modify_cashbook_entry_with_http_info(company_id, document_id, opts)
      data
    end

    # Modify Cashbook Entry
    # Modifies the specified cashbook entry.
    # @param company_id [Integer] The ID of the company.
    # @param document_id [Integer] The ID of the document.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyCashbookEntryRequest] :modify_cashbook_entry_request Cashbook Entry
    # @return [Array<(ModifyCashbookEntryResponse, Integer, Hash)>] ModifyCashbookEntryResponse data, response status code and response headers
    def modify_cashbook_entry_with_http_info(company_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashbookApi.modify_cashbook_entry ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CashbookApi.modify_cashbook_entry"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling CashbookApi.modify_cashbook_entry"
      end
      # resource path
      local_var_path = '/c/{company_id}/cashbook/{document_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'document_id' + '}', CGI.escape(document_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_cashbook_entry_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyCashbookEntryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"CashbookApi.modify_cashbook_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashbookApi#modify_cashbook_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
