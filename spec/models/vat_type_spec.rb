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

# Unit tests for FattureInCloud_Ruby_Sdk::VatType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::VatType do
  instance = FattureInCloud_Ruby_Sdk::VatType.new
  instance.id = 0
  instance.value = 22
  instance.description = "Non imponibile art. 123"
  instance.notes = "IVA non imponibile ai sensi dell\'articolo 123 comma 2"
  instance.e_invoice = true
  instance.ei_type = 2
  instance.ei_description = "string"
  instance.editable = true
  instance.is_disabled = false

  describe 'test an instance of VatType' do
    it 'should create an instance of VatType' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::VatType)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      expect(instance.id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      expect(instance.value).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      expect(instance.description).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "notes"' do
    it 'should work' do
      expect(instance.notes).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "e_invoice"' do
    it 'should work' do
      expect(instance.e_invoice).to be(true).or be(false)
    end
  end

  describe 'test attribute "ei_type"' do
    it 'should work' do
      expect(instance.ei_type).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "ei_description"' do
    it 'should work' do
      expect(instance.ei_description).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "editable"' do
    it 'should work' do
      expect(instance.editable).to be(true).or be(false)
    end
  end

  describe 'test attribute "is_disabled"' do
    it 'should work' do
      expect(instance.is_disabled).to be(true).or be(false)
    end
  end

end
