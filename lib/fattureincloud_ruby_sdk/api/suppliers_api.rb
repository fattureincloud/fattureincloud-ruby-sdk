=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.26
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class SuppliersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Supplier
    # Creates a new supplier.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSupplierRequest] :create_supplier_request The supplier to create
    # @return [CreateSupplierResponse]
    def create_supplier(company_id, opts = {})
      data, _status_code, _headers = create_supplier_with_http_info(company_id, opts)
      data
    end

    # Create Supplier
    # Creates a new supplier.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSupplierRequest] :create_supplier_request The supplier to create
    # @return [Array<(CreateSupplierResponse, Integer, Hash)>] CreateSupplierResponse data, response status code and response headers
    def create_supplier_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppliersApi.create_supplier ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SuppliersApi.create_supplier"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/suppliers'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_supplier_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateSupplierResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SuppliersApi.create_supplier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppliersApi#create_supplier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Supplier
    # Deletes the specified supplier.
    # @param company_id [Integer] The ID of the company.
    # @param supplier_id [Integer] The ID of the supplier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_supplier(company_id, supplier_id, opts = {})
      delete_supplier_with_http_info(company_id, supplier_id, opts)
      nil
    end

    # Delete Supplier
    # Deletes the specified supplier.
    # @param company_id [Integer] The ID of the company.
    # @param supplier_id [Integer] The ID of the supplier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_supplier_with_http_info(company_id, supplier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppliersApi.delete_supplier ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SuppliersApi.delete_supplier"
      end
      # verify the required parameter 'supplier_id' is set
      if @api_client.config.client_side_validation && supplier_id.nil?
        fail ArgumentError, "Missing the required parameter 'supplier_id' when calling SuppliersApi.delete_supplier"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/suppliers/{supplier_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'supplier_id' + '}', CGI.escape(supplier_id.to_s))

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
        :operation => :"SuppliersApi.delete_supplier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppliersApi#delete_supplier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Supplier
    # Gets the specified supplier.
    # @param company_id [Integer] The ID of the company.
    # @param supplier_id [Integer] The ID of the supplier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetSupplierResponse]
    def get_supplier(company_id, supplier_id, opts = {})
      data, _status_code, _headers = get_supplier_with_http_info(company_id, supplier_id, opts)
      data
    end

    # Get Supplier
    # Gets the specified supplier.
    # @param company_id [Integer] The ID of the company.
    # @param supplier_id [Integer] The ID of the supplier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetSupplierResponse, Integer, Hash)>] GetSupplierResponse data, response status code and response headers
    def get_supplier_with_http_info(company_id, supplier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppliersApi.get_supplier ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SuppliersApi.get_supplier"
      end
      # verify the required parameter 'supplier_id' is set
      if @api_client.config.client_side_validation && supplier_id.nil?
        fail ArgumentError, "Missing the required parameter 'supplier_id' when calling SuppliersApi.get_supplier"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/suppliers/{supplier_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'supplier_id' + '}', CGI.escape(supplier_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetSupplierResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SuppliersApi.get_supplier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppliersApi#get_supplier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Suppliers
    # Lists the suppliers.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [ListSuppliersResponse]
    def list_suppliers(company_id, opts = {})
      data, _status_code, _headers = list_suppliers_with_http_info(company_id, opts)
      data
    end

    # List Suppliers
    # Lists the suppliers.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [Array<(ListSuppliersResponse, Integer, Hash)>] ListSuppliersResponse data, response status code and response headers
    def list_suppliers_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppliersApi.list_suppliers ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SuppliersApi.list_suppliers"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/suppliers'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListSuppliersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SuppliersApi.list_suppliers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppliersApi#list_suppliers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Supplier
    # Modifies the specified supplier.
    # @param company_id [Integer] The ID of the company.
    # @param supplier_id [Integer] The ID of the supplier.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifySupplierRequest] :modify_supplier_request The modified Supplier. First level parameters are managed in delta mode.
    # @return [ModifySupplierResponse]
    def modify_supplier(company_id, supplier_id, opts = {})
      data, _status_code, _headers = modify_supplier_with_http_info(company_id, supplier_id, opts)
      data
    end

    # Modify Supplier
    # Modifies the specified supplier.
    # @param company_id [Integer] The ID of the company.
    # @param supplier_id [Integer] The ID of the supplier.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifySupplierRequest] :modify_supplier_request The modified Supplier. First level parameters are managed in delta mode.
    # @return [Array<(ModifySupplierResponse, Integer, Hash)>] ModifySupplierResponse data, response status code and response headers
    def modify_supplier_with_http_info(company_id, supplier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppliersApi.modify_supplier ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SuppliersApi.modify_supplier"
      end
      # verify the required parameter 'supplier_id' is set
      if @api_client.config.client_side_validation && supplier_id.nil?
        fail ArgumentError, "Missing the required parameter 'supplier_id' when calling SuppliersApi.modify_supplier"
      end
      # resource path
      local_var_path = '/c/{company_id}/entities/suppliers/{supplier_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'supplier_id' + '}', CGI.escape(supplier_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_supplier_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifySupplierResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SuppliersApi.modify_supplier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppliersApi#modify_supplier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
