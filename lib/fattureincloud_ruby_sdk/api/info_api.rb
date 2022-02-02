=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.10
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class InfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Archive Categories
    # Lists the archive categories.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [ListArchiveCategoriesResponse]
    def list_archive_categories(company_id, opts = {})
      data, _status_code, _headers = list_archive_categories_with_http_info(company_id, opts)
      data
    end

    # List Archive Categories
    # Lists the archive categories.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListArchiveCategoriesResponse, Integer, Hash)>] ListArchiveCategoriesResponse data, response status code and response headers
    def list_archive_categories_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_archive_categories ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_archive_categories"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/archive_categories'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListArchiveCategoriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_archive_categories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_archive_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Cities
    # Lists the Italian cities.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :postal_code Postal code for filtering.
    # @option opts [String] :city City for filtering (ignored if postal_code is passed).
    # @return [ListCitiesResponse]
    def list_cities(opts = {})
      data, _status_code, _headers = list_cities_with_http_info(opts)
      data
    end

    # List Cities
    # Lists the Italian cities.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :postal_code Postal code for filtering.
    # @option opts [String] :city City for filtering (ignored if postal_code is passed).
    # @return [Array<(ListCitiesResponse, Integer, Hash)>] ListCitiesResponse data, response status code and response headers
    def list_cities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_cities ...'
      end
      # resource path
      local_var_path = '/info/cities'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'postal_code'] = opts[:'postal_code'] if !opts[:'postal_code'].nil?
      query_params[:'city'] = opts[:'city'] if !opts[:'city'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListCitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_cities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_cities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Cost Centers
    # Lists the cost centers.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [ListCostCentersResponse]
    def list_cost_centers(company_id, opts = {})
      data, _status_code, _headers = list_cost_centers_with_http_info(company_id, opts)
      data
    end

    # List Cost Centers
    # Lists the cost centers.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListCostCentersResponse, Integer, Hash)>] ListCostCentersResponse data, response status code and response headers
    def list_cost_centers_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_cost_centers ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_cost_centers"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/cost_centers'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListCostCentersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_cost_centers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_cost_centers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Countries
    # Lists the supported countries.
    # @param [Hash] opts the optional parameters
    # @return [ListCountriesResponse]
    def list_countries(opts = {})
      data, _status_code, _headers = list_countries_with_http_info(opts)
      data
    end

    # List Countries
    # Lists the supported countries.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListCountriesResponse, Integer, Hash)>] ListCountriesResponse data, response status code and response headers
    def list_countries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_countries ...'
      end
      # resource path
      local_var_path = '/info/countries'

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
      return_type = opts[:debug_return_type] || 'ListCountriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_countries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_countries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Currencies
    # Lists the supported currencies.
    # @param [Hash] opts the optional parameters
    # @return [ListCurrenciesResponse]
    def list_currencies(opts = {})
      data, _status_code, _headers = list_currencies_with_http_info(opts)
      data
    end

    # List Currencies
    # Lists the supported currencies.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListCurrenciesResponse, Integer, Hash)>] ListCurrenciesResponse data, response status code and response headers
    def list_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_currencies ...'
      end
      # resource path
      local_var_path = '/info/currencies'

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
      return_type = opts[:debug_return_type] || 'ListCurrenciesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_currencies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Delivery Notes Default Causals
    # Lists the delivery note default causals.
    # @param [Hash] opts the optional parameters
    # @return [ListDeliveryNotesDefaultCausalsResponse]
    def list_delivery_notes_default_causals(opts = {})
      data, _status_code, _headers = list_delivery_notes_default_causals_with_http_info(opts)
      data
    end

    # List Delivery Notes Default Causals
    # Lists the delivery note default causals.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListDeliveryNotesDefaultCausalsResponse, Integer, Hash)>] ListDeliveryNotesDefaultCausalsResponse data, response status code and response headers
    def list_delivery_notes_default_causals_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_delivery_notes_default_causals ...'
      end
      # resource path
      local_var_path = '/info/dn_causals'

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
      return_type = opts[:debug_return_type] || 'ListDeliveryNotesDefaultCausalsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_delivery_notes_default_causals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_delivery_notes_default_causals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Languages
    # Lists the supported languages.
    # @param [Hash] opts the optional parameters
    # @return [ListLanguagesResponse]
    def list_languages(opts = {})
      data, _status_code, _headers = list_languages_with_http_info(opts)
      data
    end

    # List Languages
    # Lists the supported languages.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListLanguagesResponse, Integer, Hash)>] ListLanguagesResponse data, response status code and response headers
    def list_languages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_languages ...'
      end
      # resource path
      local_var_path = '/info/languages'

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
      return_type = opts[:debug_return_type] || 'ListLanguagesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_languages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_languages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payment Accounts
    # Lists the available payment accounts.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @return [ListPaymentAccountsResponse]
    def list_payment_accounts(company_id, opts = {})
      data, _status_code, _headers = list_payment_accounts_with_http_info(company_id, opts)
      data
    end

    # List Payment Accounts
    # Lists the available payment accounts.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @return [Array<(ListPaymentAccountsResponse, Integer, Hash)>] ListPaymentAccountsResponse data, response status code and response headers
    def list_payment_accounts_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_payment_accounts ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_payment_accounts"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/payment_accounts'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'fieldset'] = opts[:'fieldset'] if !opts[:'fieldset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListPaymentAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_payment_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_payment_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payment Methods
    # Lists the available payment methods.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @return [ListPaymentMethodsResponse]
    def list_payment_methods(company_id, opts = {})
      data, _status_code, _headers = list_payment_methods_with_http_info(company_id, opts)
      data
    end

    # List Payment Methods
    # Lists the available payment methods.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
    # @return [Array<(ListPaymentMethodsResponse, Integer, Hash)>] ListPaymentMethodsResponse data, response status code and response headers
    def list_payment_methods_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_payment_methods ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_payment_methods"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/payment_methods'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'fieldset'] = opts[:'fieldset'] if !opts[:'fieldset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListPaymentMethodsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_payment_methods",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_payment_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Product Categories
    # Lists the product categories.
    # @param company_id [Integer] The ID of the company.
    # @param context [String] 
    # @param [Hash] opts the optional parameters
    # @return [ListProductCategoriesResponse]
    def list_product_categories(company_id, context, opts = {})
      data, _status_code, _headers = list_product_categories_with_http_info(company_id, context, opts)
      data
    end

    # List Product Categories
    # Lists the product categories.
    # @param company_id [Integer] The ID of the company.
    # @param context [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListProductCategoriesResponse, Integer, Hash)>] ListProductCategoriesResponse data, response status code and response headers
    def list_product_categories_with_http_info(company_id, context, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_product_categories ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_product_categories"
      end
      # verify the required parameter 'context' is set
      if @api_client.config.client_side_validation && context.nil?
        fail ArgumentError, "Missing the required parameter 'context' when calling InfoApi.list_product_categories"
      end
      # verify enum value
      allowable_values = ["products", "issued_documents", "received_documents"]
      if @api_client.config.client_side_validation && !allowable_values.include?(context)
        fail ArgumentError, "invalid value for \"context\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/product_categories'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = context

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListProductCategoriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_product_categories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_product_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Received Document Categories
    # Lists the received document categories.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [ListReceivedDocumentCategoriesResponse]
    def list_received_document_categories(company_id, opts = {})
      data, _status_code, _headers = list_received_document_categories_with_http_info(company_id, opts)
      data
    end

    # List Received Document Categories
    # Lists the received document categories.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListReceivedDocumentCategoriesResponse, Integer, Hash)>] ListReceivedDocumentCategoriesResponse data, response status code and response headers
    def list_received_document_categories_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_received_document_categories ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_received_document_categories"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/received_document_categories'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListReceivedDocumentCategoriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_received_document_categories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_received_document_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Revenue Centers
    # Lists the revenue centers.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [ListRevenueCentersResponse]
    def list_revenue_centers(company_id, opts = {})
      data, _status_code, _headers = list_revenue_centers_with_http_info(company_id, opts)
      data
    end

    # List Revenue Centers
    # Lists the revenue centers.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListRevenueCentersResponse, Integer, Hash)>] ListRevenueCentersResponse data, response status code and response headers
    def list_revenue_centers_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_revenue_centers ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_revenue_centers"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/revenue_centers'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListRevenueCentersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_revenue_centers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_revenue_centers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Templates
    # Lists the available templates.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of the templates. (default to 'all')
    # @option opts [Boolean] :by_type [Only if type&#x3D;all] If true, splits the list in objects, grouping templates by type. (default to false)
    # @return [ListTemplatesResponse]
    def list_templates(opts = {})
      data, _status_code, _headers = list_templates_with_http_info(opts)
      data
    end

    # List Templates
    # Lists the available templates.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of the templates.
    # @option opts [Boolean] :by_type [Only if type&#x3D;all] If true, splits the list in objects, grouping templates by type.
    # @return [Array<(ListTemplatesResponse, Integer, Hash)>] ListTemplatesResponse data, response status code and response headers
    def list_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_templates ...'
      end
      allowable_values = ["all", "standard", "delivery_note", "accompanying_invoice"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/info/templates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'by_type'] = opts[:'by_type'] if !opts[:'by_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListTemplatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Units of Measure
    # Lists the units of measure.
    # @param [Hash] opts the optional parameters
    # @return [ListUnitsOfMeasureResponse]
    def list_units_of_measure(opts = {})
      data, _status_code, _headers = list_units_of_measure_with_http_info(opts)
      data
    end

    # List Units of Measure
    # Lists the units of measure.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListUnitsOfMeasureResponse, Integer, Hash)>] ListUnitsOfMeasureResponse data, response status code and response headers
    def list_units_of_measure_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_units_of_measure ...'
      end
      # resource path
      local_var_path = '/info/measures'

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
      return_type = opts[:debug_return_type] || 'ListUnitsOfMeasureResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_units_of_measure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_units_of_measure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Vat Types
    # Lists the available vat types.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [ListVatTypesResponse]
    def list_vat_types(company_id, opts = {})
      data, _status_code, _headers = list_vat_types_with_http_info(company_id, opts)
      data
    end

    # List Vat Types
    # Lists the available vat types.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(ListVatTypesResponse, Integer, Hash)>] ListVatTypesResponse data, response status code and response headers
    def list_vat_types_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfoApi.list_vat_types ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling InfoApi.list_vat_types"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/info/vat_types'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ListVatTypesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"InfoApi.list_vat_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#list_vat_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
