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
require 'date'

# Unit tests for FattureInCloud_Ruby_Sdk::CreateProductRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CreateProductRequest do
  instance = FattureInCloud_Ruby_Sdk::CreateProductRequest.new
  instance.data = {
    id: 12345,
    name: "Tavolo di marmo",
    code: "TAVOLO003",
    net_price: 240,
    gross_price: 280,
    use_gross_price: false,
    net_cost: 0,
    measure: "",
    description: "Tavolo in marmo pregiato",
    category: "arredamento",
    in_stock: true,
    default_vat: {
      id: 3,
      value: 22,
      description: "Non imponibile art. 123",
      notes: "IVA non imponibile ai sensi dell\'articolo 123, comma 2",
      is_disabled: false
    }
  }

  describe 'test an instance of CreateProductRequest' do
    it 'should create an instance of CreateProductRequest' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CreateProductRequest)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
