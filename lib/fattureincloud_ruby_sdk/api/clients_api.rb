=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.17
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class ClientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Client
    # Creates a new client.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateClientRequest] :create_client_request The client to create
    # @return [CreateClientResponse]
    def create_client(company_id, opts = {})
      data, _status_code, _headers = create_client_with_http_info(company_id, opts)
      data
    end

    # Create Client
    # Creates a new client.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateClientRequest] :create_client_request The client to create
    # @return [Array<(CreateClientResponse, Integer, Hash)>] CreateClientResponse data, response status code and response headers
    def create_client_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.create_client ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ClientsApi.create_client"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/clients'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_client_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateClientResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ClientsApi.create_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#create_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Client
    # Deletes the specified client.
    # @param company_id [Integer] The ID of the company.
    # @param client_id [Integer] The ID of the client.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_client(company_id, client_id, opts = {})
      delete_client_with_http_info(company_id, client_id, opts)
      nil
    end

    # Delete Client
    # Deletes the specified client.
    # @param company_id [Integer] The ID of the company.
    # @param client_id [Integer] The ID of the client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_client_with_http_info(company_id, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.delete_client ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ClientsApi.delete_client"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.delete_client"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/clients/{client_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'client_id' + '}', CGI.escape(client_id.to_s))

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
        :operation => :"ClientsApi.delete_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#delete_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Client
    # Gets the specified client.
    # @param company_id [Integer] The ID of the company.
    # @param client_id [Integer] The ID of the client.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetClientResponse]
    def get_client(company_id, client_id, opts = {})
      data, _status_code, _headers = get_client_with_http_info(company_id, client_id, opts)
      data
    end

    # Get Client
    # Gets the specified client.
    # @param company_id [Integer] The ID of the company.
    # @param client_id [Integer] The ID of the client.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetClientResponse, Integer, Hash)>] GetClientResponse data, response status code and response headers
    def get_client_with_http_info(company_id, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.get_client ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ClientsApi.get_client"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.get_client"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/clients/{client_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'client_id' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetClientResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ClientsApi.get_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#get_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Clients
    # Lists the clients.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [ListClientsResponse]
    def list_clients(company_id, opts = {})
      data, _status_code, _headers = list_clients_with_http_info(company_id, opts)
      data
    end

    # List Clients
    # Lists the clients.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve.
    # @option opts [Integer] :per_page The size of the page.
    # @option opts [String] :q Query for filtering the results.
    # @return [Array<(ListClientsResponse, Integer, Hash)>] ListClientsResponse data, response status code and response headers
    def list_clients_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.list_clients ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ClientsApi.list_clients"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/clients'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListClientsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ClientsApi.list_clients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#list_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Client
    # Modifies the specified client.
    # @param company_id [Integer] The ID of the company.
    # @param client_id [Integer] The ID of the client.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyClientRequest] :modify_client_request The modified Client. First level parameters are managed in delta mode.
    # @return [ModifyClientResponse]
    def modify_client(company_id, client_id, opts = {})
      data, _status_code, _headers = modify_client_with_http_info(company_id, client_id, opts)
      data
    end

    # Modify Client
    # Modifies the specified client.
    # @param company_id [Integer] The ID of the company.
    # @param client_id [Integer] The ID of the client.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyClientRequest] :modify_client_request The modified Client. First level parameters are managed in delta mode.
    # @return [Array<(ModifyClientResponse, Integer, Hash)>] ModifyClientResponse data, response status code and response headers
    def modify_client_with_http_info(company_id, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.modify_client ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ClientsApi.modify_client"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.modify_client"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/clients/{client_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'client_id' + '}', CGI.escape(client_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_client_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyClientResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ClientsApi.modify_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#modify_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
