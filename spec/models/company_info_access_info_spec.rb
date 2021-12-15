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

# Unit tests for FattureInCloud_Ruby_Sdk::CompanyInfoAccessInfo
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CompanyInfoAccessInfo do
  instance = FattureInCloud_Ruby_Sdk::CompanyInfoAccessInfo.new

  describe 'test an instance of CompanyInfoAccessInfo' do
    it 'should create an instance of CompanyInfoAccessInfo' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CompanyInfoAccessInfo)
      instance.role = "master";
      instance.through_accountant = false;
      instance.permissions = {
          fic_situation: "read",
          fic_clients: "write",
          fic_suppliers: "write",
          fic_products: "write",
          fic_issued_documents: "detailed"
      }
    end
  end
  describe 'test attribute "role"' do
    it 'should work' do
      expect(instance.role).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      expect(instance.permissions).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "through_accountant"' do
    it 'should work' do
      expect(instance.through_accountant).to be(true).or be(false)
    end
  end

end
