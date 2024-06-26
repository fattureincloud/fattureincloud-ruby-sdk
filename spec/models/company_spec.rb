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

# Unit tests for FattureInCloud_Ruby_Sdk::Company
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::Company do
  instance = FattureInCloud_Ruby_Sdk::Company.new
  instance.id = 12345
  instance.name = "Studio Commercialista"
  instance.tax_code = "ABCSFN94T17A794K"
  instance.vat_number = "IT12345640962"
  instance.type = "accountant"
  instance.access_token = "4ff5f0fe5abcd1d7157fa13ca72ab62b6183db0667a576a0e19164801c18c4f7362a848fa32dbb8c3a3f94c34f3df95"
  instance.connection_id = 94566
  instance.access_token = "ergaegwergq53wh65je5j"
  instance.fic_license_expire = "2024-10-10"
  instance.fic_plan = "standard"
  instance.controlled_companies = [
    {
      id: 12246,
      name: "Studio Commercialista",
      tax_code: "ABCSFN94T17A794K",
      type: "company",
      access_token: "4ff5f0fe5abcdf1d7157fa13ca72ab62b6183db0667a576a0e19164801c18c4f7362a848fa32dbb8c3a3f94c34f3df95",
      connection_id: 94566,
      controlled_companies: []
    },
    {
      id: 12347,
      name: "Mario Rossi SRL",
      tax_code: "57398280214",
      type: "company",
      access_token: "86690c98be13592e78b763c52fab2ba0c22faa118708ca5273da2b4dcdc7ad1234517107266d463fd9ae424a78c16cde",
      connection_id: 94566,
      controlled_companies: []
    }
  ]

  describe 'test an instance of Company' do
    it 'should create an instance of Company' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::Company)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      expect(instance.id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      expect(instance.name).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      expect(instance.type).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "access_token"' do
    it 'should work' do
      expect(instance.access_token).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "vat_number"' do
    it 'should work' do
      expect(instance.vat_number).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "controlled_companies"' do
    it 'should work' do
      expect(instance.controlled_companies).to be_a_kind_of(Array)
    end
  end

  describe 'test attribute "connection_id"' do
    it 'should work' do
      expect(instance.connection_id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "tax_code"' do
    it 'should work' do
      expect(instance.tax_code).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "fic_license_expire"' do
    it 'should work' do
      expect(instance.fic_license_expire).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "fic_plan"' do
    it 'should work' do
      expect(instance.fic_plan).to be_a_kind_of(String)
    end
  end

end
