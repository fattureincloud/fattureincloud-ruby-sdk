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

# Unit tests for FattureInCloud_Ruby_Sdk::InfoApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InfoApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::InfoApi.new

    @list_archive_categories_response_obj = {"data":["Altri documenti","Conferme d\'ordine","Contratti","Dichiarazioni dei redditi","Documenti per detrazioni","Estratti conto bancari","Estratti conto carte di credito"]}
    allow(@api_instance).to receive(:list_archive_categories) {@list_archive_categories_response_obj}
  
    @list_cities_response_obj = {"data":[{"postal_code":"89867","city":"Zungri","province":"VV"},{"postal_code":"83020","city":"Aiello del Sabato","province":"AV"},{"postal_code":"83011","city":"Altavilla Irpina","province":"AV"}]}
    allow(@api_instance).to receive(:list_cities) {@list_cities_response_obj}
  
    @list_cost_centers_response_obj = {"data":["Negozio Bergamo","Negozio Milano"]}
    allow(@api_instance).to receive(:list_cost_centers) {@list_cost_centers_response_obj}
  
    @list_countries_response_obj = {"data":["Italia","Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","..."]}
    allow(@api_instance).to receive(:list_countries) {@list_countries_response_obj}
  
    @list_currencies_response_obj = {"data":[{"id":"AED","symbol":"AED","html_symbol":"AED","exchange_rate":"4.09500"},{"id":"EUR","symbol":"\u20ac","html_symbol":"€","exchange_rate":"1.00000"}]}
    allow(@api_instance).to receive(:list_currencies) {@list_currencies_response_obj}
  
    @list_delivery_notes_default_causals_response_obj = {"data":["Vendita","Conto visione","Conto deposito","Conto vendita","Tentata vendita","Prestito d\'uso","Conto lavorazione","Omaggio","Riparazione","Reso per accredito","Reso per sostituzione"]}
    allow(@api_instance).to receive(:list_delivery_notes_default_causals) {@list_delivery_notes_default_causals_response_obj}
  
    @list_languages_response_obj = {"data":[{"code":"it","name":"Italiano"},{"code":"en","name":"Inglese"}]}
    allow(@api_instance).to receive(:list_languages) {@list_languages_response_obj}
  
    @list_payment_accounts_response_obj = {"data":[{"id":21,"name":"Indesa - Carta conto","type":"standard","iban":nil,"sia":nil,"virtual":false},{"id":109,"name":"Indesa","type":"bank","iban":"IT17A1234563200000003498936","sia":"IN234","virtual":false}]}
    allow(@api_instance).to receive(:list_payment_accounts) {@list_payment_accounts_response_obj}
    
    @list_payment_methods_response_obj = {"data":[{"id":12345,"name":"Carta di credito","is_default":false,"default_payment_account":nil},{"id":12346,"name":"Bonifico bancario","is_default":true,"default_payment_account":nil}]}
    allow(@api_instance).to receive(:list_payment_methods) {@list_payment_methods_response_obj}
    
    @list_product_categories_response_obj = {"data":["Alimentari","Arredamento"]}
    allow(@api_instance).to receive(:list_product_categories) {@list_product_categories_response_obj}
  
    @list_received_document_categories_response_obj = {"data":["Telefono e internet","Assicurazioni e quote","Auto ed altri veicoli","Computer e accessori","Server e hosting"]}
    allow(@api_instance).to receive(:list_received_document_categories) {@list_received_document_categories_response_obj}
  
    @list_revenue_centers_response_obj = {"data":["Negozio Bergamo","Negozio Milano"]}
    allow(@api_instance).to receive(:list_revenue_centers) {@list_revenue_centers_response_obj}
  
    @list_templates_response_obj = {"data":[{"id":10,"name":"New Standard S1"},{"id":106,"name":"Minimalist"}]}
    allow(@api_instance).to receive(:list_templates) {@list_templates_response_obj}
  
    @list_units_of_measure_response_obj = {"data":["pezzi","kg","litri","ore","giorni","km","mesi"]}
    allow(@api_instance).to receive(:list_units_of_measure) {@list_units_of_measure_response_obj}
  
    @list_vat_types_response_obj = {"data":[{"id":0,"value":22,"description":"Non imponibile art. 123","notes":"IVA non imponibile ai sensi dell\'articolo 123, comma 2","e_invoice":"string","ei_type":2,"ei_description":"string","editable":true},{"id":1010,"value":0,"description":"NON IMPONIBILE IVA EX ART. 8 COMMA 1 LETT.A","notes":"","e_invoice":false,"ei_type":0,"ei_description":nil,"is_disabled":false,"editable":true}]}
    allow(@api_instance).to receive(:list_vat_types) {@list_vat_types_response_obj}
  end

  after do
    # run after each test
  end

  describe 'test an instance of InfoApi' do
    it 'should create an instance of InfoApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::InfoApi)
    end
  end

  # unit tests for list_archive_categories
  # List Archive Categories
  # Lists the archive categories.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @return [ListArchiveCategoriesResponse]
  describe 'list_archive_categories test' do
    it 'should work' do
      response = @api_instance.list_archive_categories(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_archive_categories_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_cities
  # List Cities
  # Lists the Italian cities.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :postal_code Postal code for filtering.
  # @option opts [String] :city City for filtering (ignored if postal_code is passed).
  # @return [ListCitiesResponse]
  describe 'list_cities test' do
    it 'should work' do
      response = @api_instance.list_cities(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_cities_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_cost_centers
  # List Cost Centers
  # Lists the cost centers.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @return [ListCostCentersResponse]
  describe 'list_cost_centers test' do
    it 'should work' do
      response = @api_instance.list_cost_centers(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_cost_centers_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_countries
  # List Countries
  # Lists the supported countries.
  # @param [Hash] opts the optional parameters
  # @return [ListCountriesResponse]
  describe 'list_countries test' do
    it 'should work' do
      response = @api_instance.list_countries(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_countries_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_currencies
  # List Currencies
  # Lists the supported currencies.
  # @param [Hash] opts the optional parameters
  # @return [ListCurrenciesResponse]
  describe 'list_currencies test' do
    it 'should work' do
      response = @api_instance.list_currencies(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_currencies_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_delivery_notes_default_causals
  # List Delivery Notes Default Causals
  # Lists the delivery note default causals.
  # @param [Hash] opts the optional parameters
  # @return [ListDeliveryNotesDefaultCausalsResponse]
  describe 'list_delivery_notes_default_causals test' do
    it 'should work' do
      response = @api_instance.list_delivery_notes_default_causals(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_delivery_notes_default_causals_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_languages
  # List Languages
  # Lists the supported languages.
  # @param [Hash] opts the optional parameters
  # @return [ListLanguagesResponse]
  describe 'list_languages test' do
    it 'should work' do
      response = @api_instance.list_languages(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_languages_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_payment_accounts
  # List Payment Accounts
  # Lists the available payment accounts.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @return [ListPaymentAccountsResponse]
  describe 'list_payment_accounts test' do
    it 'should work' do
      response = @api_instance.list_payment_accounts(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_payment_accounts_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_payment_methods
  # List Payment Methods
  # Lists the available payment methods.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @return [ListPaymentMethodsResponse]
  describe 'list_payment_methods test' do
    it 'should work' do
      response = @api_instance.list_payment_methods(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_payment_methods_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_product_categories
  # List Product Categories
  # Lists the product categories.
  # @param company_id The ID of the company.
  # @param context 
  # @param [Hash] opts the optional parameters
  # @return [ListProductCategoriesResponse]
  describe 'list_product_categories test' do
    it 'should work' do
      response = @api_instance.list_product_categories(2, "issued_documents")
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_product_categories_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_received_document_categories
  # List Received Document Categories
  # Lists the received document categories.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @return [ListReceivedDocumentCategoriesResponse]
  describe 'list_received_document_categories test' do
    it 'should work' do
      response = @api_instance.list_received_document_categories(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_received_document_categories_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_revenue_centers
  # List Revenue Centers
  # Lists the revenue centers.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @return [ListRevenueCentersResponse]
  describe 'list_revenue_centers test' do
    it 'should work' do
      response = @api_instance.list_revenue_centers(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_revenue_centers_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_templates
  # List Templates
  # Lists the available templates.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Type of the templates.
  # @option opts [Boolean] :by_type [Only if type&#x3D;all] If true, splits the list in objects, grouping templates by type.
  # @return [ListTemplatesResponse]
  describe 'list_templates test' do
    it 'should work' do
      response = @api_instance.list_templates(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_templates_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_units_of_measure
  # List Units of Measure
  # Lists the units of measure.
  # @param [Hash] opts the optional parameters
  # @return [ListUnitsOfMeasureResponse]
  describe 'list_units_of_measure test' do
    it 'should work' do
      response = @api_instance.list_units_of_measure(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_units_of_measure_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_vat_types
  # List Vat Types
  # Lists the available vat types.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [ListVatTypesResponse]
  describe 'list_vat_types test' do
    it 'should work' do
      response = @api_instance.list_vat_types(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_vat_types_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
