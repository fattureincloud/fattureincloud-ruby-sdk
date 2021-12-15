=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.7
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FattureInCloud_Ruby_Sdk::ClientsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClientsApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::ClientsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientsApi' do
    it 'should create an instance of ClientsApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ClientsApi)
    end
  end

  # unit tests for create_client
  # Create Client
  # Creates a new client.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateClientRequest] :create_client_request The client to create
  # @return [CreateClientResponse]
  describe 'create_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_client
  # Delete Client
  # Deletes the specified client.
  # @param company_id The ID of the company.
  # @param client_id The ID of the client.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_client
  # Get Client
  # Gets the specified client.
  # @param company_id The ID of the company.
  # @param client_id The ID of the client.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetClientResponse]
  describe 'get_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_clients
  # List Clients
  # Lists the clients.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @return [ListClientsResponse]
  describe 'list_clients test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_client
  # Modify Client
  # Modifies the specified client.
  # @param company_id The ID of the company.
  # @param client_id The ID of the client.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyClientRequest] :modify_client_request The modified Client. First level parameters are managed in delta mode.
  # @return [ModifyClientResponse]
  describe 'modify_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
