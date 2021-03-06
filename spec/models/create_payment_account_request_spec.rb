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

# Unit tests for FattureInCloud_Ruby_Sdk::CreatePaymentAccountRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CreatePaymentAccountRequest do
  instance = FattureInCloud_Ruby_Sdk::CreatePaymentAccountRequest.new
  instance.data = {
    id: 12345,
    name: "Indesa",
    type: "bank",
    iban: "IT17Q0051343200000003497636",
    sia: "T1234",
    virtual: false
  }  
  
  describe 'test an instance of CreatePaymentAccountRequest' do
    it 'should create an instance of CreatePaymentAccountRequest' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CreatePaymentAccountRequest)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
