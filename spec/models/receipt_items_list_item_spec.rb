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

# Unit tests for FattureInCloud_Ruby_Sdk::ReceiptItemsListItem
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ReceiptItemsListItem do
  instance = FattureInCloud_Ruby_Sdk::ReceiptItemsListItem.new
  instance.id = 888
  instance.amount_net = 8.2
  instance.amount_gross = 10.0
  instance.category = "altro"
  instance.vat = {
      id: 21
  }

  describe 'test an instance of ReceiptItemsListItem' do
    it 'should create an instance of ReceiptItemsListItem' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ReceiptItemsListItem)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      expect(instance.id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "amount_net"' do
    it 'should work' do
      expect(instance.amount_net).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "amount_gross"' do
    it 'should work' do
      expect(instance.amount_gross).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "category"' do
    it 'should work' do
      expect(instance.category).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "vat"' do
    it 'should work' do
      expect(instance.vat).to be_a_kind_of(Object)
    end
  end

end
