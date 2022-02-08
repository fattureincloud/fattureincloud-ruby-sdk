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

# Unit tests for FattureInCloud_Ruby_Sdk::GetReceiptsMonthlyTotalsResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::GetReceiptsMonthlyTotalsResponse do
  instance = FattureInCloud_Ruby_Sdk::GetReceiptsMonthlyTotalsResponse.new
  instance.data = [
    {
      net: 15000,
      gross: 18000,
      count: 10
    },
    {
      net: 18000,
      gross: 22000,
      count: 20
    },
    {
      net: 20000,
      gross: 24400,
      count: 30
    },
    {
      net: 19000,
      gross: 22000,
      count: 20
    },
    {
      net: 17000,
      gross: 20000,
      count: 10
    },
    {
      net: 18000,
      gross: 24000,
      count: 21
    },
    {
      net: 22000,
      gross: 25000,
      count: 30
    },
    {
      net: 17000,
      gross: 21000,
      count: 21
    },
    {
      net: 0,
      gross: 0,
      count: 10
    },
    {
      net: 0,
      gross: 0,
      count: 20
    },
    {
      net: 0,
      gross: 0,
      count: 30
    },
    {
      net: 0,
      gross: 0,
      count: 21
    }
  ];

  describe 'test an instance of GetReceiptsMonthlyTotalsResponse' do
    it 'should create an instance of GetReceiptsMonthlyTotalsResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::GetReceiptsMonthlyTotalsResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
