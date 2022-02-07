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

# Unit tests for FattureInCloud_Ruby_Sdk::IssuedDocumentPaymentsListItem
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::IssuedDocumentPaymentsListItem do
  instance = FattureInCloud_Ruby_Sdk::IssuedDocumentPaymentsListItem.new
  instance.due_date = Date.new(2021, 12, 21)
  instance.amount = 333
  instance.status = "paid"
  instance.paid_date = Date.new(2021, 12, 21)
  instance.payment_account = {
      id: 21,
      name: "Indesa - Carta conto",
      type: "standard",
      virtual: false
  },
  instance.ei_raw = {
      prop: true
  }    

  describe 'test an instance of IssuedDocumentPaymentsListItem' do
    it 'should create an instance of IssuedDocumentPaymentsListItem' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::IssuedDocumentPaymentsListItem)
    end
  end
  describe 'test attribute "due_date"' do
    it 'should work' do
      expect(instance.due_date).to be_a_kind_of(Date)
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
      expect(instance.amount).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      expect(instance.status).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "payment_account"' do
    it 'should work' do
      expect(instance.payment_account).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "paid_date"' do
    it 'should work' do
      expect(instance.paid_date).to be_a_kind_of(Date)
    end
  end

  describe 'test attribute "ei_raw"' do
    it 'should work' do
      expect(instance.ei_raw).to be_a_kind_of(Object)
    end
  end

end
