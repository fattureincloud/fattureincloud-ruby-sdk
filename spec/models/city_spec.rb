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

# Unit tests for FattureInCloud_Ruby_Sdk::City
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::City do
  instance = FattureInCloud_Ruby_Sdk::City.new
  instance.postal_code = "89867"
  instance.city = "Zungri"
  instance.province = "VV"    

  describe 'test an instance of City' do
    it 'should create an instance of City' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::City)
    end
  end
  describe 'test attribute "postal_code"' do
    it 'should work' do
      expect(instance.postal_code).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "city"' do
    it 'should work' do
      expect(instance.city).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "province"' do
    it 'should work' do
      expect(instance.province).to be_a_kind_of(String)
    end
  end

end
