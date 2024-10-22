=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.1.2
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class ProductsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Product
    # Creates a new product.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductRequest] :create_product_request 
    # @return [CreateProductResponse]
    def create_product(company_id, opts = {})
      data, _status_code, _headers = create_product_with_http_info(company_id, opts)
      data
    end

    # Create Product
    # Creates a new product.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductRequest] :create_product_request 
    # @return [Array<(CreateProductResponse, Integer, Hash)>] CreateProductResponse data, response status code and response headers
    def create_product_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.create_product ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ProductsApi.create_product"
      end
      # resource path
      local_var_path = '/c/{company_id}/products'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_product_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ProductsApi.create_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#create_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Product
    # Deletes the specified product.
    # @param company_id [Integer] The ID of the company.
    # @param product_id [Integer] The ID of the product.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_product(company_id, product_id, opts = {})
      delete_product_with_http_info(company_id, product_id, opts)
      nil
    end

    # Delete Product
    # Deletes the specified product.
    # @param company_id [Integer] The ID of the company.
    # @param product_id [Integer] The ID of the product.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_product_with_http_info(company_id, product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.delete_product ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ProductsApi.delete_product"
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ProductsApi.delete_product"
      end
      # resource path
      local_var_path = '/c/{company_id}/products/{product_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s))

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
        :operation => :"ProductsApi.delete_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#delete_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Product
    # Gets the specified product.
    # @param company_id [Integer] The ID of the company.
    # @param product_id [Integer] The ID of the product.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetProductResponse]
    def get_product(company_id, product_id, opts = {})
      data, _status_code, _headers = get_product_with_http_info(company_id, product_id, opts)
      data
    end

    # Get Product
    # Gets the specified product.
    # @param company_id [Integer] The ID of the company.
    # @param product_id [Integer] The ID of the product.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetProductResponse, Integer, Hash)>] GetProductResponse data, response status code and response headers
    def get_product_with_http_info(company_id, product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.get_product ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ProductsApi.get_product"
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ProductsApi.get_product"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/products/{product_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'fieldset'] = opts[:'fieldset'] if !opts[:'fieldset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ProductsApi.get_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#get_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Products
    # Lists the products.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [ListProductsResponse]
    def list_products(company_id, opts = {})
      data, _status_code, _headers = list_products_with_http_info(company_id, opts)
      data
    end

    # List Products
    # Lists the products.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @option opts [Integer] :page The page to retrieve. (default to 1)
    # @option opts [Integer] :per_page The size of the page. (default to 5)
    # @option opts [String] :q Query for filtering the results.
    # @return [Array<(ListProductsResponse, Integer, Hash)>] ListProductsResponse data, response status code and response headers
    def list_products_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.list_products ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ProductsApi.list_products"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ProductsApi.list_products, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ProductsApi.list_products, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/c/{company_id}/products'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListProductsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ProductsApi.list_products",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#list_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Product
    # Modifies the specified product.
    # @param company_id [Integer] The ID of the company.
    # @param product_id [Integer] The ID of the product.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyProductRequest] :modify_product_request Modified product details.
    # @return [ModifyProductResponse]
    def modify_product(company_id, product_id, opts = {})
      data, _status_code, _headers = modify_product_with_http_info(company_id, product_id, opts)
      data
    end

    # Modify Product
    # Modifies the specified product.
    # @param company_id [Integer] The ID of the company.
    # @param product_id [Integer] The ID of the product.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyProductRequest] :modify_product_request Modified product details.
    # @return [Array<(ModifyProductResponse, Integer, Hash)>] ModifyProductResponse data, response status code and response headers
    def modify_product_with_http_info(company_id, product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.modify_product ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling ProductsApi.modify_product"
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ProductsApi.modify_product"
      end
      # resource path
      local_var_path = '/c/{company_id}/products/{product_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_product_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"ProductsApi.modify_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#modify_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
