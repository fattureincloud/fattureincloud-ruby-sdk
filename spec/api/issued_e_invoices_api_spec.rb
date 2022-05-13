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

# Unit tests for FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IssuedEInvoicesApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi.new

    @send_e_invoice_response_obj = { "data": { "name": "CARICATO", "date": "2021-08-23 10:38:03" } }
    allow(@api_instance).to receive(:send_e_invoice) { @send_e_invoice_response_obj }
  
    @verify_e_invoice_xml_response_obj = { "data": { "success": true } }
    allow(@api_instance).to receive(:verify_e_invoice_xml) { @verify_e_invoice_xml_response_obj }

    @get_e_invoice_xml_response = "<xml-fattura>fields</xml-fattura>"
    allow(@api_instance).to receive(:get_e_invoice_xml) { @get_e_invoice_xml_response }

    @get_e_invoice_rejection_reason_response_obj = { "data": { "reason": "invalid data" } }
    allow(@api_instance).to receive(:get_e_invoice_rejection_reason) { @get_e_invoice_rejection_reason_response_obj }

  end

  after do
    # run after each test
  end

  describe 'test an instance of IssuedEInvoicesApi' do
    it 'should create an instance of IssuedEInvoicesApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::IssuedEInvoicesApi)
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
      response = @api_instance.send_e_invoice(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @send_e_invoice_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
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
      response = @api_instance.verify_e_invoice_xml(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @verify_e_invoice_xml_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_e_invoice_xml
  # Get e-invoice XML
  # Downloads the e-invoice in XML format.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_attachment Include the attachment to the XML e-invoice.
  # @return [String]
  describe 'get_e_invoice_xml test' do
    it 'should work' do
      response = @api_instance.get_e_invoice_xml(2, 22, true)
      expected = @get_e_invoice_xml_response

      expect(response).to eq(expected)
    end
  end

  # unit tests for get_e_invoice_rejection_reason
  # Get EInvoice rejection reason
  # Get EInvoice rejection reason
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [GetEInvoiceRejectionReasonResponse]
  describe 'get_e_invoice_rejection_reason test' do
    it 'should work' do
      response = @api_instance.get_e_invoice_rejection_reason(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_e_invoice_rejection_reason_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
