=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.27
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Webhook Subscription
    # Register some webhooks Subscriptions.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksSubscriptionRequest] :create_webhooks_subscription_request 
    # @return [CreateWebhooksSubscriptionResponse]
    def create_webhooks_subscription(company_id, opts = {})
      data, _status_code, _headers = create_webhooks_subscription_with_http_info(company_id, opts)
      data
    end

    # Create a Webhook Subscription
    # Register some webhooks Subscriptions.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksSubscriptionRequest] :create_webhooks_subscription_request 
    # @return [Array<(CreateWebhooksSubscriptionResponse, Integer, Hash)>] CreateWebhooksSubscriptionResponse data, response status code and response headers
    def create_webhooks_subscription_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhooks_subscription ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling WebhooksApi.create_webhooks_subscription"
      end
      # resource path
      local_var_path = '/c/{company_id}/subscriptions'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhooks_subscription_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateWebhooksSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"WebhooksApi.create_webhooks_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhooks_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Webhooks Subscription
    # Delete a webhooks subscription.
    # @param company_id [Integer] The ID of the company.
    # @param subscription_id [String] The ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhooks_subscription(company_id, subscription_id, opts = {})
      delete_webhooks_subscription_with_http_info(company_id, subscription_id, opts)
      nil
    end

    # Delete Webhooks Subscription
    # Delete a webhooks subscription.
    # @param company_id [Integer] The ID of the company.
    # @param subscription_id [String] The ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhooks_subscription_with_http_info(company_id, subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhooks_subscription ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling WebhooksApi.delete_webhooks_subscription"
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling WebhooksApi.delete_webhooks_subscription"
      end
      # resource path
      local_var_path = '/c/{company_id}/subscriptions/{subscription_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s))

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
        :operation => :"WebhooksApi.delete_webhooks_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhooks_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Webhooks Subscription
    # Get a webhooks subscription.
    # @param company_id [Integer] The ID of the company.
    # @param subscription_id [String] The ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @return [GetWebhooksSubscriptionResponse]
    def get_webhooks_subscription(company_id, subscription_id, opts = {})
      data, _status_code, _headers = get_webhooks_subscription_with_http_info(company_id, subscription_id, opts)
      data
    end

    # Get Webhooks Subscription
    # Get a webhooks subscription.
    # @param company_id [Integer] The ID of the company.
    # @param subscription_id [String] The ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetWebhooksSubscriptionResponse, Integer, Hash)>] GetWebhooksSubscriptionResponse data, response status code and response headers
    def get_webhooks_subscription_with_http_info(company_id, subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhooks_subscription ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling WebhooksApi.get_webhooks_subscription"
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling WebhooksApi.get_webhooks_subscription"
      end
      # resource path
      local_var_path = '/c/{company_id}/subscriptions/{subscription_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetWebhooksSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_webhooks_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Webhooks Subscriptions
    # List active webhooks subscriptions.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [ListWebhooksSubscriptionsResponse]
    def list_webhooks_subscriptions(company_id, opts = {})
      data, _status_code, _headers = list_webhooks_subscriptions_with_http_info(company_id, opts)
      data
    end

    # List Webhooks Subscriptions
    # List active webhooks subscriptions.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListWebhooksSubscriptionsResponse, Integer, Hash)>] ListWebhooksSubscriptionsResponse data, response status code and response headers
    def list_webhooks_subscriptions_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.list_webhooks_subscriptions ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling WebhooksApi.list_webhooks_subscriptions"
      end
      # resource path
      local_var_path = '/c/{company_id}/subscriptions'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListWebhooksSubscriptionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"WebhooksApi.list_webhooks_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#list_webhooks_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify Webhooks Subscription
    # Edit a webhooks subscription.
    # @param company_id [Integer] The ID of the company.
    # @param subscription_id [String] The ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyWebhooksSubscriptionRequest] :modify_webhooks_subscription_request 
    # @return [ModifyWebhooksSubscriptionResponse]
    def modify_webhooks_subscription(company_id, subscription_id, opts = {})
      data, _status_code, _headers = modify_webhooks_subscription_with_http_info(company_id, subscription_id, opts)
      data
    end

    # Modify Webhooks Subscription
    # Edit a webhooks subscription.
    # @param company_id [Integer] The ID of the company.
    # @param subscription_id [String] The ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [ModifyWebhooksSubscriptionRequest] :modify_webhooks_subscription_request 
    # @return [Array<(ModifyWebhooksSubscriptionResponse, Integer, Hash)>] ModifyWebhooksSubscriptionResponse data, response status code and response headers
    def modify_webhooks_subscription_with_http_info(company_id, subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.modify_webhooks_subscription ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling WebhooksApi.modify_webhooks_subscription"
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling WebhooksApi.modify_webhooks_subscription"
      end
      # resource path
      local_var_path = '/c/{company_id}/subscriptions/{subscription_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'modify_webhooks_subscription_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModifyWebhooksSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"WebhooksApi.modify_webhooks_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#modify_webhooks_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end