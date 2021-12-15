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

# Unit tests for FattureInCloud_Ruby_Sdk::ReceivedDocumentInfoDefaultValues
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ReceivedDocumentInfoDefaultValues do
  instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentInfoDefaultValues.new
  instance.detailed = false
  describe 'test an instance of ReceivedDocumentInfoDefaultValues' do
    it 'should create an instance of ReceivedDocumentInfoDefaultValues' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ReceivedDocumentInfoDefaultValues)
    end
  end
  describe 'test attribute "detailed"' do
    it 'should work' do
      expect(instance.detailed).to be(true).or be(false)
    end
  end

end
