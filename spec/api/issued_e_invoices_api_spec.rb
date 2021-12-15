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

# Unit tests for FattureInCloud::Ruby::Sdk::IssuedEInvoicesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IssuedEInvoicesApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud::Ruby::Sdk::IssuedEInvoicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IssuedEInvoicesApi' do
    it 'should create an instance of IssuedEInvoicesApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud::Ruby::Sdk::IssuedEInvoicesApi)
    end
  end

  # unit tests for send_e_invoice
  # Send the e-invoice
  # Sends the e-invoice to SDI.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [SendEInvoiceRequest] :send_e_invoice_request 
  # @return [SendEInvoiceResponse]
  describe 'send_e_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_e_invoice_xml
  # Verify e-invoice xml
  # Verifies the e-invoice xml format. Checks if all of the mandatory fields are filled and compliant to the right format.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [VerifyEInvoiceXmlResponse]
  describe 'verify_e_invoice_xml test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
