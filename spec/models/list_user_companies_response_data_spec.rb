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

# Unit tests for FattureInCloud_Ruby_Sdk::ListUserCompaniesResponseData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ListUserCompaniesResponseData do
  instance = FattureInCloud_Ruby_Sdk::ListUserCompaniesResponseData.new
  instance.companies = [
    {
      id: 12345,
      name: "Studio Commercialista",
      tax_code: "ABCSFN94T17A794K",
      type: "accountant",
      access_token: "4ff5f0fe5abcd1d7157fa13ca72ab62b6183db0667a576a0e19164801c18c4f7362a848fa32dbb8c3a3f94c34f3df95",
      connection_id: 94566,
      controlled_companies: [
        {
          id: 12246,
          name: "Studio Commercialista",
          tax_code: "ABCSFN94T17A794K",
          type: "company",
          access_token: "4ff5f0fe5abcdf1d7157fa13ca72ab62b6183db0667a576a0e19164801c18c4f7362a848fa32dbb8c3a3f94c34f3df95",
          connection_id: 94566,
          controlled_companies: [],
          fic: true,
          dic: true,
          fic_plan: "premium_plus",
          fic_license_expire: "2021-12-31",
          permissions: {
            fic_situation: "write",
            fic_clients: "write",
            fic_suppliers: "write",
            fic_products: "write",
            fic_issued_documents: "write",
            fic_received_documents: "write",
            fic_receipts: "write",
            fic_calendar: "write",
            fic_archive: "write",
            fic_taxes: "write",
            fic_stock: "write",
            fic_cashbook: "write",
            fic_settings: "write",
            fic_emails: "write",
            dic_employees: "write",
            dic_timesheet: "write",
            dic_settings: "write"
          }
        }
      ]
    }
  ]

  describe 'test an instance of ListUserCompaniesResponseData' do
    it 'should create an instance of ListUserCompaniesResponseData' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ListUserCompaniesResponseData)
    end
  end
  describe 'test attribute "companies"' do
    it 'should work' do
      expect(instance.companies).to be_a_kind_of(Object)
    end
  end

end
