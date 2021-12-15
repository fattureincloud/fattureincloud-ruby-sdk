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

# Unit tests for FattureInCloud::Ruby::Sdk::TaxesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaxesApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud::Ruby::Sdk::TaxesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxesApi' do
    it 'should create an instance of TaxesApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud::Ruby::Sdk::TaxesApi)
    end
  end

  # unit tests for create_f24
  # Create F24
  # Creates a new F24.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateF24Request] :create_f24_request The F24 to create
  # @return [CreateF24Response]
  describe 'create_f24 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_f24
  # Delete F24
  # Removes the specified F24.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_f24 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_f24_attachment
  # Delete F24 Attachment
  # Removes the attachment of the specified F24.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_f24_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_f24
  # Get F24
  # Gets the specified F24.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetF24Response]
  describe 'get_f24 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_f24
  # List F24
  # Lists the F24s.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @return [ListF24Response]
  describe 'list_f24 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_f24
  # Modify F24
  # Modifies the specified F24.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyF24Request] :modify_f24_request The F24
  # @return [ModifyF24Response]
  describe 'modify_f24 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_f24_attachment
  # Upload F24 Attachment
  # Uploads an attachment destined to a F24. The actual association between the document and the attachment must be implemented separately, using the returned token.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filename Name of the file.
  # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
  # @return [UploadF24AttachmentResponse]
  describe 'upload_f24_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
