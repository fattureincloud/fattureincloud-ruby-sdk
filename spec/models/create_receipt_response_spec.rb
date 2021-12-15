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

# Unit tests for FattureInCloud_Ruby_Sdk::CreateReceiptResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CreateReceiptResponse do
  instance = FattureInCloud_Ruby_Sdk::CreateReceiptResponse.new
  instance.data = {
    id: 12346,
    date: "2021-08-19",
    number: 6,
    numeration: "REC006",
    amount_net: 8.2,
    amount_vat: 1.8,
    amount_gross: 10,
    use_gross_prices: true,
    type: "sales_receipt",
    description: "cassa 1",
    rc_center: "",
    created_at: "2021-08-19",
    updated_at: "2021-08-19",
    payment_account: {
      id: 555,
      name: "contanti"
    },
    items_list: [
      {
        id: 888,
        amount_net: 8.2,
        amount_vat: 1.8,
        amount_gross: 10,
        category: "altro",
        vat: {
          id: 0,
          value: 22,
          description: "iva"
        }
      }
    ]
  }

  describe 'test an instance of CreateReceiptResponse' do
    it 'should create an instance of CreateReceiptResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CreateReceiptResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
