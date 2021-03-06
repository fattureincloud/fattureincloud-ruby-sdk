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

# Unit tests for FattureInCloud_Ruby_Sdk::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::ProductsApi.new

    @create_product_response_obj = { "data": { "id": 12345, "name": "Tavolo di marmo", "code": "TAVOLO003", "net_price": 240, "gross_price": 280, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in marmo pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 3, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell\'articolo 123, comma 2", "is_disabled": false } } }
    allow(@api_instance).to receive(:create_product) { @create_product_response_obj }

    @get_product_response_obj = { "data": { "id": 12345, "name": "Tavolo di marmo", "code": "TAVOLO003", "net_price": 240, "gross_price": 280, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in marmo pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 3, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell\'articolo 123, comma 2", "is_disabled": false } } }
    allow(@api_instance).to receive(:get_product) { @get_product_response_obj }

    @list_products_response_obj = { "current_page": 1, "data": [{ "id": 12345, "name": "Tavolo di marmo", "code": "TAVOLO003", "net_price": 240, "gross_price": 280, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in marmo pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 3, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell\'articolo 123, comma 2", "is_disabled": false } }, { "id": 12346, "name": "Tavolo di legno", "code": "TAVOLO001", "net_price": 120, "gross_price": 160, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in legno pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 3, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell\'articolo 123, comma 2", "is_disabled": false } }], "first_page_url": "page=1", "from": 1, "last_page": 1, "last_page_url": "page=1", "next_page_url": "page=2", "path": "products", "per_page": 50, "prev_page_url": nil, "to": 55, "total": 55 }
    allow(@api_instance).to receive(:list_products) { @list_products_response_obj }
    
    @modify_product_response_obj = { "data": { "id": 12345, "name": "Tavolo di marmo", "code": "TAVOLO003", "net_price": 240, "gross_price": 280, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in marmo pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 3, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell\'articolo 123, comma 2", "is_disabled": false } } }
    allow(@api_instance).to receive(:modify_product) { @modify_product_response_obj }

  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ProductsApi)
    end
  end

  # unit tests for create_product
  # Create Product
  # Creates a new product.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateProductRequest] :create_product_request 
  # @return [CreateProductResponse]
  describe 'create_product test' do
    it 'should work' do
      opts = { "data": { "name": "Tavolo di marmo", "code": "TAVOLOso003", "net_price": 240, "gross_price": 280, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in marmo pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 1409, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "is_disabled": false } } }
      response = @api_instance.create_product(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_product_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for delete_product
  # Delete Product
  # Deletes the specified product.
  # @param company_id The ID of the company.
  # @param product_id The ID of the product.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_product test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for get_product
  # Get Product
  # Gets the specified product.
  # @param company_id The ID of the company.
  # @param product_id The ID of the product.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetProductResponse]
  describe 'get_product test' do
    it 'should work' do
      response = @api_instance.get_product(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_product_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_products
  # List Products
  # Lists the products.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @option opts [String] :query Query for filtering the results.
  # @return [ListProductsResponse]
  describe 'list_products test' do
    it 'should work' do
      response = @api_instance.list_products(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_products_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_product
  # Modify Product
  # Modifies the specified product.
  # @param company_id The ID of the company.
  # @param product_id The ID of the product.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyProductRequest] :modify_product_request Modified product details.
  # @return [ModifyProductResponse]
  describe 'modify_product test' do
    it 'should work' do
      opts = { "data": { "name": "Tavolo di marmo", "code": "TAVOLOso003", "net_price": 240, "gross_price": 280, "use_gross_price": false, "net_cost": 0, "measure": "", "description": "Tavolo in marmo pregiato", "category": "arredamento", "in_stock": true, "default_vat": { "id": 1409, "value": 22, "description": "Non imponibile art. 123", "notes": "IVA non imponibile ai sensi dell'articolo 123, comma 2", "is_disabled": false } } }
      response = @api_instance.modify_product(2, 22, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_product_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
