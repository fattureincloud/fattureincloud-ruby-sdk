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

# Unit tests for FattureInCloud_Ruby_Sdk::CashbookEntry
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CashbookEntry do
  instance = FattureInCloud_Ruby_Sdk::CashbookEntry.new
  instance.id = 12345
  instance.date = Date.new(2021, 12, 3)
  instance.description = "Fattura n. 201/2021"
  instance.entity_name = "Rossi S.r.l."
  instance.kind = "issued_document"
  instance.type = "in"
  instance.amount_in = 100.0
  instance.amount_out = 0.0
  instance.document = {
      id: 12345,
      type: "issued_document",
      path: "/doc1.pdf"
  },
  instance.payment_account_in = {
      id: 333
  },
  instance.payment_account_out = {
      id: 333
  }

  describe 'test an instance of CashbookEntry' do
    it 'should create an instance of CashbookEntry' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CashbookEntry)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      expect(instance.id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "date"' do
    it 'should work' do
      expect(instance.date).to be_a_kind_of(Date)
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      expect(instance.description).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "kind"' do
    it 'should work' do
      expect(instance.kind).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      expect(instance.type).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "entity_name"' do
    it 'should work' do
      expect(instance.entity_name).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "document"' do
    it 'should work' do
      expect(instance.document).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "amount_out"' do
    it 'should work' do
      expect(instance.amount_out).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "payment_account_out"' do
    it 'should work' do
      expect(instance.payment_account_out).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "amount_in"' do
    it 'should work' do
      expect(instance.amount_in).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "payment_account_in"' do
    it 'should work' do
      expect(instance.payment_account_in).to be_a_kind_of(Object)
    end
  end

end
