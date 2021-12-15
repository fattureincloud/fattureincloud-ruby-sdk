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

# Unit tests for FattureInCloud_Ruby_Sdk::ListCitiesResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ListCitiesResponse do
  instance = FattureInCloud_Ruby_Sdk::ListCitiesResponse.new
  instance.data = [
    {
      postal_code: "89867",
      city: "Zungri",
      province: "VV"
    },
    {
      postal_code: "83020",
      city: "Aiello del Sabato",
      province: "AV"
    },
    {
      postal_code: "83011",
      city: "Altavilla Irpina",
      province: "AV"
    }
  ]

  describe 'test an instance of ListCitiesResponse' do
    it 'should create an instance of ListCitiesResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ListCitiesResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
