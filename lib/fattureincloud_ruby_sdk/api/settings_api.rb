=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.7
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Payment Account
    # Creates a new payment account.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePaymentAccountRequest] :create_payment_account_request 
    # @return [CreatePaymentAccountResponse]
    def create_payment_account(company_id, opts = {})
      data, _status_code, _headers = create_payment_account_with_http_info(company_id, opts)
      data
    end

    # Create Payment Account
    # Creates a new payment account.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePaymentAccountRequest] :create_payment_account_request 
    # @return [Array<(CreatePaymentAccountResponse, Integer, Hash)>] CreatePaymentAccountResponse data, response status code and response headers
    def create_payment_account_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.create_payment_account ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.create_payment_account"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_accounts'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_payment_account_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreatePaymentAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.create_payment_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#create_payment_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Payment Method
    # Creates a new payment method.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePaymentMethodRequest] :create_payment_method_request 
    # @return [CreatePaymentMethodResponse]
    def create_payment_method(company_id, opts = {})
      data, _status_code, _headers = create_payment_method_with_http_info(company_id, opts)
      data
    end

    # Create Payment Method
    # Creates a new payment method.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePaymentMethodRequest] :create_payment_method_request 
    # @return [Array<(CreatePaymentMethodResponse, Integer, Hash)>] CreatePaymentMethodResponse data, response status code and response headers
    def create_payment_method_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.create_payment_method ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.create_payment_method"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_methods'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_payment_method_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreatePaymentMethodResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.create_payment_method",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#create_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Vat Type
    # Creates a vat type.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateVatTypeRequest] :create_vat_type_request 
    # @return [CreateVatTypeResponse]
    def create_vat_type(company_id, opts = {})
      data, _status_code, _headers = create_vat_type_with_http_info(company_id, opts)
      data
    end

    # Create Vat Type
    # Creates a vat type.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateVatTypeRequest] :create_vat_type_request 
    # @return [Array<(CreateVatTypeResponse, Integer, Hash)>] CreateVatTypeResponse data, response status code and response headers
    def create_vat_type_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.create_vat_type ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.create_vat_type"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/vat_types'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/xml', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_vat_type_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateVatTypeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.create_vat_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#create_vat_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Payment Account
    # Deletes the specified payment account.
    # @param company_id [Integer] The ID of the company.
    # @param payment_account_id [Integer] The Referred Payment Account Id.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_account(company_id, payment_account_id, opts = {})
      delete_payment_account_with_http_info(company_id, payment_account_id, opts)
      nil
    end

    # Delete Payment Account
    # Deletes the specified payment account.
    # @param company_id [Integer] The ID of the company.
    # @param payment_account_id [Integer] The Referred Payment Account Id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_account_with_http_info(company_id, payment_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.delete_payment_account ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.delete_payment_account"
      end
      # verify the required parameter 'payment_account_id' is set
      if @api_client.config.client_side_validation && payment_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_account_id' when calling SettingsApi.delete_payment_account"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_accounts/{payment_account_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'payment_account_id' + '}', CGI.escape(payment_account_id.to_s))

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
        :operation => :"SettingsApi.delete_payment_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#delete_payment_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Payment Method
    # Deletes the specified payment method.
    # @param company_id [Integer] The ID of the company.
    # @param payment_method_id [Integer] The Referred Payment Method Id.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_method(company_id, payment_method_id, opts = {})
      delete_payment_method_with_http_info(company_id, payment_method_id, opts)
      nil
    end

    # Delete Payment Method
    # Deletes the specified payment method.
    # @param company_id [Integer] The ID of the company.
    # @param payment_method_id [Integer] The Referred Payment Method Id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_method_with_http_info(company_id, payment_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.delete_payment_method ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.delete_payment_method"
      end
      # verify the required parameter 'payment_method_id' is set
      if @api_client.config.client_side_validation && payment_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_method_id' when calling SettingsApi.delete_payment_method"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_methods/{payment_method_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'payment_method_id' + '}', CGI.escape(payment_method_id.to_s))

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
        :operation => :"SettingsApi.delete_payment_method",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#delete_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Vat Type
    # Deletes the specified vat type.
    # @param company_id [Integer] The ID of the company.
    # @param vat_type_id [Integer] The Referred Vat Type Id.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_vat_type(company_id, vat_type_id, opts = {})
      delete_vat_type_with_http_info(company_id, vat_type_id, opts)
      nil
    end

    # Delete Vat Type
    # Deletes the specified vat type.
    # @param company_id [Integer] The ID of the company.
    # @param vat_type_id [Integer] The Referred Vat Type Id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_vat_type_with_http_info(company_id, vat_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.delete_vat_type ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.delete_vat_type"
      end
      # verify the required parameter 'vat_type_id' is set
      if @api_client.config.client_side_validation && vat_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'vat_type_id' when calling SettingsApi.delete_vat_type"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/vat_types/{vat_type_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'vat_type_id' + '}', CGI.escape(vat_type_id.to_s))

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
        :operation => :"SettingsApi.delete_vat_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#delete_vat_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payment Account
    # Gets the specified payment account.
    # @param company_id [Integer] The ID of the company.
    # @param payment_account_id [Integer] The Referred Payment Account Id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetPaymentAccountResponse]
    def get_payment_account(company_id, payment_account_id, opts = {})
      data, _status_code, _headers = get_payment_account_with_http_info(company_id, payment_account_id, opts)
      data
    end

    # Get Payment Account
    # Gets the specified payment account.
    # @param company_id [Integer] The ID of the company.
    # @param payment_account_id [Integer] The Referred Payment Account Id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetPaymentAccountResponse, Integer, Hash)>] GetPaymentAccountResponse data, response status code and response headers
    def get_payment_account_with_http_info(company_id, payment_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_payment_account ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.get_payment_account"
      end
      # verify the required parameter 'payment_account_id' is set
      if @api_client.config.client_side_validation && payment_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_account_id' when calling SettingsApi.get_payment_account"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_accounts/{payment_account_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'payment_account_id' + '}', CGI.escape(payment_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetPaymentAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.get_payment_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_payment_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payment Method
    # Gets the specified payment method.
    # @param company_id [Integer] The ID of the company.
    # @param payment_method_id [Integer] The Referred Payment Method Id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [GetPaymentMethodResponse]
    def get_payment_method(company_id, payment_method_id, opts = {})
      data, _status_code, _headers = get_payment_method_with_http_info(company_id, payment_method_id, opts)
      data
    end

    # Get Payment Method
    # Gets the specified payment method.
    # @param company_id [Integer] The ID of the company.
    # @param payment_method_id [Integer] The Referred Payment Method Id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields List of comma-separated fields.
    # @option opts [String] :fieldset Name of the fieldset.
    # @return [Array<(GetPaymentMethodResponse, Integer, Hash)>] GetPaymentMethodResponse data, response status code and response headers
    def get_payment_method_with_http_info(company_id, payment_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_payment_method ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.get_payment_method"
      end
      # verify the required parameter 'payment_method_id' is set
      if @api_client.config.client_side_validation && payment_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_method_id' when calling SettingsApi.get_payment_method"
      end
      allowable_values = ["basic", "detailed"]
      if @api_client.config.client_side_validation && opts[:'fieldset'] && !allowable_values.include?(opts[:'fieldset'])
        fail ArgumentError, "invalid value for \"fieldset\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_methods/{payment_method_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'payment_method_id' + '}', CGI.escape(payment_method_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetPaymentMethodResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.get_payment_method",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Vat Type
    # Gets the specified vat type.
    # @param company_id [Integer] The ID of the company.
    # @param vat_type_id [Integer] The Referred Vat Type Id.
    # @param [Hash] opts the optional parameters
    # @return [GetVatTypeResponse]
    def get_vat_type(company_id, vat_type_id, opts = {})
      data, _status_code, _headers = get_vat_type_with_http_info(company_id, vat_type_id, opts)
      data
    end

    # Get Vat Type
    # Gets the specified vat type.
    # @param company_id [Integer] The ID of the company.
    # @param vat_type_id [Integer] The Referred Vat Type Id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetVatTypeResponse, Integer, Hash)>] GetVatTypeResponse data, response status code and response headers
    def get_vat_type_with_http_info(company_id, vat_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_vat_type ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.get_vat_type"
      end
      # verify the required parameter 'vat_type_id' is set
      if @api_client.config.client_side_validation && vat_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'vat_type_id' when calling SettingsApi.get_vat_type"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/vat_types/{vat_type_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'vat_type_id' + '}', CGI.escape(vat_type_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetVatTypeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.get_vat_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_vat_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Payment Account
    # Modifies the specified payment account.
    # @param company_id [Integer] The ID of the company.
    # @param payment_account_id [Integer] The Referred Payment Account Id.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyPaymentAccountRequest] :modify_payment_account_request 
    # @return [ModifyPaymentAccountResponse]
    def modify_payment_account(company_id, payment_account_id, opts = {})
      data, _status_code, _headers = modify_payment_account_with_http_info(company_id, payment_account_id, opts)
      data
    end

    # Modify Payment Account
    # Modifies the specified payment account.
    # @param company_id [Integer] The ID of the company.
    # @param payment_account_id [Integer] The Referred Payment Account Id.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyPaymentAccountRequest] :modify_payment_account_request 
    # @return [Array<(ModifyPaymentAccountResponse, Integer, Hash)>] ModifyPaymentAccountResponse data, response status code and response headers
    def modify_payment_account_with_http_info(company_id, payment_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.modify_payment_account ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.modify_payment_account"
      end
      # verify the required parameter 'payment_account_id' is set
      if @api_client.config.client_side_validation && payment_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_account_id' when calling SettingsApi.modify_payment_account"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_accounts/{payment_account_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'payment_account_id' + '}', CGI.escape(payment_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_payment_account_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyPaymentAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.modify_payment_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#modify_payment_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Payment Method
    # Modifies the specified payment method.
    # @param company_id [Integer] The ID of the company.
    # @param payment_method_id [Integer] The Referred Payment Method Id.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyPaymentMethodRequest] :modify_payment_method_request 
    # @return [ModifyPaymentMethodResponse]
    def modify_payment_method(company_id, payment_method_id, opts = {})
      data, _status_code, _headers = modify_payment_method_with_http_info(company_id, payment_method_id, opts)
      data
    end

    # Modify Payment Method
    # Modifies the specified payment method.
    # @param company_id [Integer] The ID of the company.
    # @param payment_method_id [Integer] The Referred Payment Method Id.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyPaymentMethodRequest] :modify_payment_method_request 
    # @return [Array<(ModifyPaymentMethodResponse, Integer, Hash)>] ModifyPaymentMethodResponse data, response status code and response headers
    def modify_payment_method_with_http_info(company_id, payment_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.modify_payment_method ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.modify_payment_method"
      end
      # verify the required parameter 'payment_method_id' is set
      if @api_client.config.client_side_validation && payment_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_method_id' when calling SettingsApi.modify_payment_method"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/payment_methods/{payment_method_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'payment_method_id' + '}', CGI.escape(payment_method_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_payment_method_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyPaymentMethodResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.modify_payment_method",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#modify_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Vat Type
    # Modifies the specified vat type.
    # @param company_id [Integer] The ID of the company.
    # @param vat_type_id [Integer] The Referred Vat Type Id.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyVatTypeRequest] :modify_vat_type_request 
    # @return [ModifyVatTypeResponse]
    def modify_vat_type(company_id, vat_type_id, opts = {})
      data, _status_code, _headers = modify_vat_type_with_http_info(company_id, vat_type_id, opts)
      data
    end

    # Modify Vat Type
    # Modifies the specified vat type.
    # @param company_id [Integer] The ID of the company.
    # @param vat_type_id [Integer] The Referred Vat Type Id.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyVatTypeRequest] :modify_vat_type_request 
    # @return [Array<(ModifyVatTypeResponse, Integer, Hash)>] ModifyVatTypeResponse data, response status code and response headers
    def modify_vat_type_with_http_info(company_id, vat_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.modify_vat_type ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling SettingsApi.modify_vat_type"
      end
      # verify the required parameter 'vat_type_id' is set
      if @api_client.config.client_side_validation && vat_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'vat_type_id' when calling SettingsApi.modify_vat_type"
      end
      # resource path
      local_var_path = '/c/{company_id}/settings/vat_types/{vat_type_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'vat_type_id' + '}', CGI.escape(vat_type_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_vat_type_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyVatTypeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"SettingsApi.modify_vat_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#modify_vat_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
