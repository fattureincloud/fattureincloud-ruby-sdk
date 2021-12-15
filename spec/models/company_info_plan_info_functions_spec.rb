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

# Unit tests for FattureInCloud_Ruby_Sdk::CompanyInfoPlanInfoFunctions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::CompanyInfoPlanInfoFunctions do
  instance = FattureInCloud_Ruby_Sdk::CompanyInfoPlanInfoFunctions.new
  instance.document_attachments = true
  instance.archive = true
  instance.payment_notifications = true
  instance.paypal = true
  instance.receipts = true
  instance.e_invoice = true
  instance.genius = true
  instance.stock = true
  instance.smtp = true
  instance.mail_tracking = true
  instance.subaccounts = true
  instance.tessera_sanitaria = true
  instance.recurring = true
  instance.sofort = false
  instance.cerved = true
  instance.ts_digital = true
  instance.ts_pay = true
  instance.ts_invoice_trading = true
  describe 'test an instance of CompanyInfoPlanInfoFunctions' do
    it 'should create an instance of CompanyInfoPlanInfoFunctions' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::CompanyInfoPlanInfoFunctions)
    end
  end
  describe 'test attribute "archive"' do
    it 'should work' do
      expect(instance.archive).to be(true).or be(false)
    end
  end

  describe 'test attribute "cerved"' do
    it 'should work' do
      expect(instance.cerved).to be(true).or be(false)
    end
  end

  describe 'test attribute "document_attachments"' do
    it 'should work' do
      expect(instance.document_attachments).to be(true).or be(false)
    end
  end

  describe 'test attribute "e_invoice"' do
    it 'should work' do
      expect(instance.e_invoice).to be(true).or be(false)
    end
  end

  describe 'test attribute "genius"' do
    it 'should work' do
      expect(instance.genius).to be(true).or be(false)
    end
  end

  describe 'test attribute "mail_tracking"' do
    it 'should work' do
      expect(instance.mail_tracking).to be(true).or be(false)
    end
  end

  describe 'test attribute "payment_notifications"' do
    it 'should work' do
      expect(instance.payment_notifications).to be(true).or be(false)
    end
  end

  describe 'test attribute "paypal"' do
    it 'should work' do
      expect(instance.paypal).to be(true).or be(false)
    end
  end

  describe 'test attribute "receipts"' do
    it 'should work' do
      expect(instance.receipts).to be(true).or be(false)
    end
  end

  describe 'test attribute "recurring"' do
    it 'should work' do
      expect(instance.recurring).to be(true).or be(false)
    end
  end

  describe 'test attribute "smtp"' do
    it 'should work' do
      expect(instance.smtp).to be(true).or be(false)
    end
  end

  describe 'test attribute "sofort"' do
    it 'should work' do
      expect(instance.sofort).to be(true).or be(false)
    end
  end

  describe 'test attribute "stock"' do
    it 'should work' do
      expect(instance.stock).to be(true).or be(false)
    end
  end

  describe 'test attribute "subaccounts"' do
    it 'should work' do
      expect(instance.subaccounts).to be(true).or be(false)
    end
  end

  describe 'test attribute "tessera_sanitaria"' do
    it 'should work' do
      expect(instance.tessera_sanitaria).to be(true).or be(false)
    end
  end

  describe 'test attribute "ts_digital"' do
    it 'should work' do
      expect(instance.ts_digital).to be(true).or be(false)
    end
  end

  describe 'test attribute "ts_invoice_trading"' do
    it 'should work' do
      expect(instance.ts_invoice_trading).to be(true).or be(false)
    end
  end

  describe 'test attribute "ts_pay"' do
    it 'should work' do
      expect(instance.ts_pay).to be(true).or be(false)
    end
  end

end
