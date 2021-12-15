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

# Unit tests for FattureInCloud_Ruby_Sdk::CreateF24Response
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CreateF24Response do
  instance = FattureInCloud_Ruby_Sdk::CreateF24Response.new
  instance.data = {
    id: 12345,
    amount: 840.36,
    description: "PAGAMENTO IVA 2021",
    due_date: "2021-12-31",
    status: "paid",
    payment_account: {
      id: 111,
      name: "Indesa - carta conto"
    },
    attachment_url: "b19c01da9b1688fb73d0d9e8adae89a8.pdf"
  }

  describe 'test an instance of CreateF24Response' do
    it 'should create an instance of CreateF24Response' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CreateF24Response)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
