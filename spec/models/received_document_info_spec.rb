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

# Unit tests for FattureInCloud_Ruby_Sdk::ReceivedDocumentInfo
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ReceivedDocumentInfo do
  instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentInfo.new
  instance.default_values = {
      detailed: false
    },
  instance.items_default_values = {
      vat: 21
    },
  instance.countries_list = [
      "Italia",
      "Afghanistan",
      "Albania"
    ],
  instance.currencies_list = [
      {
        id: "AED",
        symbol: "AED",
        html_symbol: "AED",
        exchange_rate: "4.09500"
      },
      {
        id: "ALL",
        symbol: "ALL",
        html_symbol: "ALL",
        exchange_rate: "121.50000"
      }
   ],
  instance.categories_list = [
      "Auto",
      "Telefono e internet"
    ],
  instance.payment_accounts_list = [
      {
        id: 111,
        name: "Indesa - carta conto"
      }
   ],
  instance.vat_types_list = [
    {
      id: 1334,
      value: 0,
      description: "Non imp. art. 17 c. 6 DPR 633/72 e s.m.i.",
      is_disabled: false
    },
    {
      id: 1333,
      value: 0,
      description: "Non sogg. art. 74 c. 7 e 8 DPR 633/72",
      is_disabled: false
    }
  ]

  describe 'test an instance of ReceivedDocumentInfo' do
    it 'should create an instance of ReceivedDocumentInfo' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ReceivedDocumentInfo)
    end
  end
  describe 'test attribute "default_values"' do
    it 'should work' do
      expect(instance.default_values).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "items_default_values"' do
    it 'should work' do
      expect(instance.items_default_values).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "countries_list"' do
    it 'should work' do
      expect(instance.countries_list).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "currencies_list"' do
    it 'should work' do
      expect(instance.currencies_list).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "categories_list"' do
    it 'should work' do
      expect(instance.categories_list).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "payment_accounts_list"' do
    it 'should work' do
      expect(instance.payment_accounts_list).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "vat_types_list"' do
    it 'should work' do
      expect(instance.vat_types_list).to be_a_kind_of(Object)
    end
  end

end
