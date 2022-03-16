=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.14
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FattureInCloud_Ruby_Sdk::DetailedCountry
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::DetailedCountry do
  instance = FattureInCloud_Ruby_Sdk::DetailedCountry.new
  instance.name = "Italia"
  instance.settings_name = "Italia"
  instance.iso = "IT"
  instance.fiscal_iso = "IT"
  instance.uic = "087"

  describe 'test an instance of DetailedCountry' do
    it 'should create an instance of DetailedCountry' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::DetailedCountry)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      expect(instance.name).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "settings_name"' do
    it 'should work' do
      expect(instance.settings_name).to be_a_kind_of(String)

    end
  end

  describe 'test attribute "iso"' do
    it 'should work' do
      expect(instance.iso).to be_a_kind_of(String)

    end
  end

  describe 'test attribute "fiscal_iso"' do
    it 'should work' do
      expect(instance.fiscal_iso).to be_a_kind_of(String)

    end
  end

  describe 'test attribute "uic"' do
    it 'should work' do
      expect(instance.uic).to be_a_kind_of(String)

    end
  end

end
