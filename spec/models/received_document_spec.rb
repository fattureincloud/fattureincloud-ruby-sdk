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

# Unit tests for FattureInCloud_Ruby_Sdk::ReceivedDocument
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ReceivedDocument do
  instance = FattureInCloud_Ruby_Sdk::ReceivedDocument.new
  instance.id = 12345
  instance.type = "expense"
  instance.description = "Soggiorno di lavoro"
  instance.category = "cat"
  instance.amortization = 1
  instance.rc_center = "rcc"
  instance.invoice_number = "inv12345"
  instance.is_marked = false
  instance.is_detailed = false
  instance.e_invoice = false
  instance.date = Date.new(2021, 12, 21)
  instance.next_due_date = Date.new(2021, 12, 21)
  instance.amount_net = 592.0
  instance.amount_vat = 0
  instance.amount_gross = 592.0
  instance.amount_withholding_tax = 0.0
  instance.amount_other_withholding_tax = 0.0
  instance.tax_deductibility = 50.0
  instance.vat_deductibility = 100.0
  instance.attachment_url = "spesa_ger5i783t45hu6ti.pdf"
  instance.attachment_preview_url = "/preview.pdf"
  instance.entity = {
    id: 111,
    name: "Hotel Rubino Palace"
  },
  instance.currency = {
    id: "EUR",
    exchange_rate: "1.00000",
    symbol: "€"
  },
  instance.payments_list = [
    {
      amount: 592,
      due_date: "2021-08-15",
      paid_date: "2021-08-15",
      id: 777,
      payment_terms: {
        days: 0,
        type: "standard"
      },
      status: "paid",
      payment_account: {
        id: 222,
        name: "Contanti",
        virtual: false
      }
    }
  ],
  instance.items_list = [
    {
      id: 12345,
      product_id: 54321,
      code: "pdr01",
      measure: "very big",
      name: "prod uan",
      net_price: 100,
      category: "other",
      qty: 1,
      stock: 99,
      vat: {
        id: 1020,
        value: 0,
        description: "PA Non imp art. 2",
        is_disabled: false
      }
    }
  ]
  instance.attachment_token = "sjfbisfb43t5y454y65uhete"

  describe 'test an instance of ReceivedDocument' do
    it 'should create an instance of ReceivedDocument' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ReceivedDocument)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      expect(instance.id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      expect(instance.type).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "entity"' do
    it 'should work' do
      expect(instance.entity).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "date"' do
    it 'should work' do
      expect(instance.date).to be_a_kind_of(Date)
    end
  end

  describe 'test attribute "category"' do
    it 'should work' do
      expect(instance.category).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      expect(instance.description).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "amount_net"' do
    it 'should work' do
      expect(instance.amount_net).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "amount_vat"' do
    it 'should work' do
      expect(instance.amount_vat).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "amount_withholding_tax"' do
    it 'should work' do
      expect(instance.amount_withholding_tax).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "amount_other_withholding_tax"' do
    it 'should work' do
      expect(instance.amount_other_withholding_tax).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "amount_gross"' do
    it 'should work' do
      expect(instance.amount_gross).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "amortization"' do
    it 'should work' do
      expect(instance.amortization).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "rc_center"' do
    it 'should work' do
      expect(instance.rc_center).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "invoice_number"' do
    it 'should work' do
      expect(instance.invoice_number).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "is_marked"' do
    it 'should work' do
      expect(instance.is_marked).to be(true).or be(false)
    end
  end

  describe 'test attribute "is_detailed"' do
    it 'should work' do
      expect(instance.is_detailed).to be(true).or be(false)
    end
  end

  describe 'test attribute "e_invoice"' do
    it 'should work' do
      expect(instance.e_invoice).to be(true).or be(false)
    end
  end

  describe 'test attribute "next_due_date"' do
    it 'should work' do
      expect(instance.next_due_date).to be_a_kind_of(Date)
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      expect(instance.currency).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "tax_deductibility"' do
    it 'should work' do
      expect(instance.tax_deductibility).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "vat_deductibility"' do
    it 'should work' do
      expect(instance.vat_deductibility).to be_a_kind_of(Float)
    end
  end

  describe 'test attribute "items_list"' do
    it 'should work' do
      expect(instance.items_list).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "payments_list"' do
    it 'should work' do
      expect(instance.payments_list).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "attachment_url"' do
    it 'should work' do
      expect(instance.attachment_url).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "attachment_preview_url"' do
    it 'should work' do
      expect(instance.attachment_preview_url).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "attachment_token"' do
    it 'should work' do
      expect(instance.attachment_token).to be_a_kind_of(String)
    end
  end

end
