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

# Unit tests for FattureInCloud_Ruby_Sdk::SuppliersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SuppliersApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::SuppliersApi.new

    @create_supplier_response_obj = { "data": { "id": 12345, "code": "AE86", "name": "Mario Rossi S.R.L.", "type": "company", "first_name": "Mario", "last_name": "Rossi", "contact_person": "", "vat_number": "111222333", "tax_code": "111122233", "address_street": "Corso Magellano, 46", "address_postal_code": "20146", "address_city": "Milano", "address_province": "MI", "address_extra": "", "country": "Italia", "email": "mario.rossi@example.com", "certified_email": "mario.rossi@pec.example.com", "phone": "1234567890", "fax": "123456789", "notes": "" } }
    allow(@api_instance).to receive(:create_supplier) { @create_supplier_response_obj }

    @get_supplier_response_obj = { "data": { "id": 12345, "code": "AE86", "name": "Mario Rossi S.R.L.", "type": "company", "first_name": "Mario", "last_name": "Rossi", "contact_person": "", "vat_number": "111222333", "tax_code": "111122233", "address_street": "Corso Magellano, 46", "address_postal_code": "20146", "address_city": "Milano", "address_province": "MI", "address_extra": "", "country": "Italia", "email": "mario.rossi@example.com", "certified_email": "mario.rossi@pec.example.com", "phone": "1234567890", "fax": "123456789", "notes": "" } }
    allow(@api_instance).to receive(:get_supplier) { @get_supplier_response_obj }

    @list_suppliers_response_obj = { "first_page_url": "page=1", "from": 1, "last_page": 2, "last_page_url": "page=2", "next_page_url": "page=2", "path": "\/entities\/suppliers", "per_page": 50, "prev_page_url": nil, "to": 55, "total": 55, "data": [{ "id": 12345, "code": "AE86", "name": "Mario Rossi S.R.L.", "type": "company", "first_name": "Mario", "last_name": "Rossi", "contact_person": "", "vat_number": "111222333", "tax_code": "111122233", "address_street": "Corso Magellano, 46", "address_postal_code": "20146", "address_city": "Milano", "address_province": "MI", "address_extra": "", "country": "Italia", "email": "mario.rossi@example.com", "certified_email": "mario.rossi@pec.example.com", "phone": "1234567890", "fax": "123456789", "notes": "", "created_at": "2021-15-08", "updated_at": "2021-15-08" }, { "id": 12346, "code": "GT86", "name": "Maria Grossi S.R.L.", "type": "company", "first_name": "", "last_name": "", "contact_person": "", "vat_number": "200020102020", "tax_code": "200020102020", "address_street": "Vicolo stretto, 32", "address_postal_code": "20146", "address_city": "Milano", "address_province": "MI", "address_extra": "", "country": "Italia", "email": "maria.grossi@example.com", "certified_email": "maria.grossi@pec.example.com", "phone": "0987654321", "fax": "098765432", "notes": "", "created_at": "2021-15-09", "updated_at": "2021-15-09" }] }
    allow(@api_instance).to receive(:list_suppliers) { @list_suppliers_response_obj }

    @modify_supplier_response_obj = { "data": { "id": 12345, "code": "AE86", "name": "Mario Rossi S.R.L.", "type": "company", "first_name": "Mario", "last_name": "Rossi", "contact_person": "", "vat_number": "111222333", "tax_code": "111122233", "address_street": "Corso Magellano, 46", "address_postal_code": "20146", "address_city": "Milano", "address_province": "MI", "address_extra": "", "country": "Italia", "email": "mario.rossi@example.com", "certified_email": "mario.rossi@pec.example.com", "phone": "1234567890", "fax": "123456789", "notes": "" } }
    allow(@api_instance).to receive(:modify_supplier) { @modify_supplier_response_obj }

  end

  after do
    # run after each test
  end

  describe 'test an instance of SuppliersApi' do
    it 'should create an instance of SuppliersApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::SuppliersApi)
    end
  end

  # unit tests for create_supplier
  # Create Supplier
  # Creates a new supplier.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateSupplierRequest] :create_supplier_request The supplier to create
  # @return [CreateSupplierResponse]
  describe 'create_supplier test' do
    it 'should work' do
      opts = { "data": { "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
      response = @api_instance.create_supplier(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_supplier_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for delete_supplier
  # Delete Supplier
  # Deletes the specified supplier.
  # @param company_id The ID of the company.
  # @param supplier_id The ID of the supplier.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_supplier test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for get_supplier
  # Get Supplier
  # Gets the specified supplier.
  # @param company_id The ID of the company.
  # @param supplier_id The ID of the supplier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetSupplierResponse]
  describe 'get_supplier test' do
    it 'should work' do
      response = @api_instance.get_supplier(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_supplier_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_suppliers
  # List Suppliers
  # Lists the suppliers.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @option opts [String] :query Query for filtering the results.
  # @return [ListSuppliersResponse]
  describe 'list_suppliers test' do
    it 'should work' do
      response = @api_instance.list_suppliers(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_suppliers_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_supplier
  # Modify Supplier
  # Modifies the specified supplier.
  # @param company_id The ID of the company.
  # @param supplier_id The ID of the supplier.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifySupplierRequest] :modify_supplier_request The modified Supplier. First level parameters are managed in delta mode.
  # @return [ModifySupplierResponse]
  describe 'modify_supplier test' do
    it 'should work' do
      opts = { "data": { "name": "Indesa", "type": "bank", "iban": "IT17Q0051343200000003497636", "sia": "T1234", "virtual": false } }
      response = @api_instance.modify_supplier(2, 22, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_supplier_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
