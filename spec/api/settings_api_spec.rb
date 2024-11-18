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

# Unit tests for FattureInCloud_Ruby_Sdk::SettingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::SettingsApi.new

    @create_payment_account_response_obj = { "data": { "id": 12345, "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
    allow(@api_instance).to receive(:create_payment_account) { @create_payment_account_response_obj }
    
    @create_payment_method_response_obj = { "data": { "id": 386683, "name": "Bonifico bancario", "is_default": true, "type": "standard", "details": [{ "title": "Banca", "description": "Sao Paulo" }], "default_payment_account": { "id": 12345, "name": "conto banca SP" } } }
    allow(@api_instance).to receive(:create_payment_method) { @create_payment_method_response_obj }
    
    @create_vat_type_response_obj = { "data": { "id": 0, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "e_invoice": true, "ei_type": 2, "ei_description": "string", "editable": true, "is_disabled": true } }
    allow(@api_instance).to receive(:create_vat_type) { @create_vat_type_response_obj }

    @get_payment_account_response_obj = { "data": { "id": 12345, "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
    allow(@api_instance).to receive(:get_payment_account) { @get_payment_account_response_obj }
    
    @get_payment_method_response_obj = { "data": { "id": 386683, "name": "Bonifico bancario", "is_default": true, "type": "standard", "details": [{ "title": "Banca", "description": "Sao Paulo" }], "default_payment_account": { "id": 12345, "name": "conto banca SP" } } }
    allow(@api_instance).to receive(:get_payment_method) { @get_payment_method_response_obj }

    @get_vat_type_response_obj = { "data": { "id": 0, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "e_invoice": true, "ei_type": 2, "ei_description": "string", "editable": true, "is_disabled": true } }
    allow(@api_instance).to receive(:get_vat_type) { @get_vat_type_response_obj }

    @modify_payment_account_response_obj = { "data": { "id": 12345, "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
    allow(@api_instance).to receive(:modify_payment_account) { @modify_payment_account_response_obj }
    
    @modify_payment_method_response_obj = { "data": { "id": 386683, "name": "Bonifico bancario", "is_default": true, "type": "standard", "details": [{ "title": "Banca", "description": "Sao Paulo" }], "default_payment_account": { "id": 12345, "name": "conto banca SP" } } }
    allow(@api_instance).to receive(:modify_payment_method) { @modify_payment_method_response_obj }

    @modify_vat_type_response_obj = { "data": { "id": 0, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "e_invoice": true, "ei_type": 2, "ei_description": "string", "editable": true, "is_disabled": true } }
    allow(@api_instance).to receive(:modify_vat_type) { @modify_vat_type_response_obj }

    @get_tax_profile_response_obj = { "data": { "company_type": "individual", "company_subtype": "artigiani", "profession": "test", "regime": "forfettario_5", "rivalsa_name": "", "default_rivalsa": 0, "cassa_name": "", "default_cassa": 0, "default_cassa_taxable": 100, "cassa2_name": "", "default_cassa2": 0, "default_cassa2_taxable": 0, "default_withholding_tax": 0, "default_withholding_tax_taxable": 100, "default_other_withholding_tax": 0, "enasarco": false, "enasarco_type": "test", "contributions_percentage": 0, "med": false, "default_vat": { "id": 66, "value": 0, "description": "Contribuenti forfettari", "notes": "Operazione non soggetta a IVA ai sensi dell'art. 1, commi 54-89, Legge n. 190/2014 e succ. modifiche/integrazioni", "e_invoice": true, "ei_type": 2.2, "ei_description": "Non soggetta art. 1/54-89 L. 190/2014 e succ. modifiche/integrazioni", "editable": false, "is_disabled": false, "default": true } } }
    allow(@api_instance).to receive(:get_tax_profile) { @get_tax_profile_response_obj }

  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsApi' do
    it 'should create an instance of SettingsApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::SettingsApi)
    end
  end

  # unit tests for create_payment_account
  # Create Payment Account
  # Creates a new payment account.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePaymentAccountRequest] :create_payment_account_request 
  # @return [CreatePaymentAccountResponse]
  describe 'create_payment_account test' do
    it 'should work' do
      opts = { "data": { "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
      response = @api_instance.create_payment_account(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_payment_account_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for create_payment_method
  # Create Payment Method
  # Creates a new payment method.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePaymentMethodRequest] :create_payment_method_request 
  # @return [CreatePaymentMethodResponse]
  describe 'create_payment_method test' do
    it 'should work' do
      opts = { "data": { "name": "Bonifico bancario", "is_default": true, "type": "standard", "details": [{ "title": "Banca", "description": "Sao Paulo" }], "default_payment_account": { "id": 12345, "name": "conto banca SP" } } }
      response = @api_instance.create_payment_method(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_payment_method_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for create_vat_type
  # Create Vat Type
  # Creates a vat type.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateVatTypeRequest] :create_vat_type_request 
  # @return [CreateVatTypeResponse]
  describe 'create_vat_type test' do
    it 'should work' do
      opts = { "data": { "id": 0, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "e_invoice": true, "ei_type": 2, "ei_description": "string", "editable": true, "is_disabled": true } }
      response = @api_instance.create_vat_type(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_vat_type_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for delete_payment_account
  # Delete Payment Account
  # Deletes the specified payment account.
  # @param company_id The ID of the company.
  # @param payment_account_id The Referred Payment Account Id.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payment_account test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for delete_payment_method
  # Delete Payment Method
  # Deletes the specified payment method.
  # @param company_id The ID of the company.
  # @param payment_method_id The Referred Payment Method Id.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payment_method test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for delete_vat_type
  # Delete Vat Type
  # Deletes the specified vat type.
  # @param company_id The ID of the company.
  # @param vat_type_id The Referred Vat Type Id.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vat_type test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for get_payment_account
  # Get Payment Account
  # Gets the specified payment account.
  # @param company_id The ID of the company.
  # @param payment_account_id The Referred Payment Account Id.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetPaymentAccountResponse]
  describe 'get_payment_account test' do
    it 'should work' do
      response = @api_instance.get_payment_account(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_payment_account_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_payment_method
  # Get Payment Method
  # Gets the specified payment method.
  # @param company_id The ID of the company.
  # @param payment_method_id The Referred Payment Method Id.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetPaymentMethodResponse]
  describe 'get_payment_method test' do
    it 'should work' do
      response = @api_instance.get_payment_method(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_payment_method_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_vat_type
  # Get Vat Type
  # Gets the specified vat type.
  # @param company_id The ID of the company.
  # @param vat_type_id The Referred Vat Type Id.
  # @param [Hash] opts the optional parameters
  # @return [GetVatTypeResponse]
  describe 'get_vat_type test' do
    it 'should work' do
      response = @api_instance.get_vat_type(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_vat_type_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_payment_account
  # Modify Payment Account
  # Modifies the specified payment account.
  # @param company_id The ID of the company.
  # @param payment_account_id The Referred Payment Account Id.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyPaymentAccountRequest] :modify_payment_account_request 
  # @return [ModifyPaymentAccountResponse]
  describe 'modify_payment_account test' do
    it 'should work' do
      opts = { "data": { "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
      response = @api_instance.modify_payment_account(2, 22, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_payment_account_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_payment_method
  # Modify Payment Method
  # Modifies the specified payment method.
  # @param company_id The ID of the company.
  # @param payment_method_id The Referred Payment Method Id.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyPaymentMethodRequest] :modify_payment_method_request 
  # @return [ModifyPaymentMethodResponse]
  describe 'modify_payment_method test' do
    it 'should work' do
      opts = { "data": { "name": "Bonifico bancario", "is_default": true, "type": "standard", "details": [{ "title": "Banca", "description": "Sao Paulo" }], "default_payment_account": { "id": 12345, "name": "conto banca SP" } } }
      response = @api_instance.modify_payment_method(2, 22, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_payment_method_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_vat_type
  # Modify Vat Type
  # Modifies the specified vat type.
  # @param company_id The ID of the company.
  # @param vat_type_id The Referred Vat Type Id.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyVatTypeRequest] :modify_vat_type_request 
  # @return [ModifyVatTypeResponse]
  describe 'modify_vat_type test' do
    it 'should work' do
      opts = { "data": { "id": 0, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "e_invoice": true, "ei_type": 2, "ei_description": "string", "editable": true, "is_disabled": true } }
      response = @api_instance.modify_vat_type(2, 22, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_vat_type_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_tax_profile
  # Get Tax Profile
  # Gets the tax profile of the specified company.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @return [GetTaxProfileResponse]
  describe 'get_tax_profile test' do
    it 'should work' do
      response = @api_instance.get_tax_profile(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_tax_profile_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
