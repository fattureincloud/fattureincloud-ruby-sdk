=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.1.3
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module FattureInCloud_Ruby_Sdk
  class EmailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Emails
    # List Emails.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [ListEmailsResponse]
    def list_emails(company_id, opts = {})
      data, _status_code, _headers = list_emails_with_http_info(company_id, opts)
      data
    end

    # List Emails
    # List Emails.
    # @param company_id [Integer] The ID of the company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListEmailsResponse, Integer, Hash)>] ListEmailsResponse data, response status code and response headers
    def list_emails_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailsApi.list_emails ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling EmailsApi.list_emails"
      end
      # resource path
      local_var_path = '/c/{company_id}/emails'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListEmailsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2AuthenticationCodeFlow']

      new_options = opts.merge(
        :operation => :"EmailsApi.list_emails",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#list_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
