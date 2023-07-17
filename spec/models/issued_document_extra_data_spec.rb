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

# Unit tests for FattureInCloud_Ruby_Sdk::IssuedDocumentExtraData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::IssuedDocumentExtraData do
  instance = FattureInCloud_Ruby_Sdk::IssuedDocumentExtraData.new
  instance.show_sofort_button = true
  instance.multifatture_sent = 3
  instance.ts_communication = true
  instance.ts_flag_tipo_spesa = 1
  instance.ts_pagamento_tracciato = true
  instance.ts_tipo_spesa = "TK"
  instance.ts_opposizione = true
  instance.ts_status = 1
  instance.ts_file_id = "file.png"
  instance.ts_sent_date = Date.new(2021, 12, 21)
  instance.ts_full_amount = true
  instance.imported_by = "jss"

  describe 'test an instance of IssuedDocumentExtraData' do
    it 'should create an instance of IssuedDocumentExtraData' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::IssuedDocumentExtraData)
    end
  end
  describe 'test attribute "show_sofort_button"' do
    it 'should work' do
      expect(instance.show_sofort_button).to be(true).or be(false)
    end
  end

  describe 'test attribute "multifatture_sent"' do
    it 'should work' do
      expect(instance.multifatture_sent).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "ts_communication"' do
    it 'should work' do
      expect(instance.ts_communication).to be(true).or be(false)
    end
  end

  describe 'test attribute "ts_flag_tipo_spesa"' do
    it 'should work' do
      expect(instance.ts_flag_tipo_spesa).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "ts_pagamento_tracciato"' do
    it 'should work' do
      expect(instance.ts_pagamento_tracciato).to be(true).or be(false)
    end
  end

  describe 'test attribute "ts_tipo_spesa"' do
    it 'should work' do
      expect(instance.ts_tipo_spesa).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "ts_opposizione"' do
    it 'should work' do
      expect(instance.ts_opposizione).to be(true).or be(false)
    end
  end

  describe 'test attribute "ts_status"' do
    it 'should work' do
      expect(instance.ts_status).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "ts_file_id"' do
    it 'should work' do
      expect(instance.ts_file_id).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "ts_sent_date"' do
    it 'should work' do
      expect(instance.ts_sent_date).to be_a_kind_of(Date)
    end
  end

  describe 'test attribute "ts_full_amount"' do
    it 'should work' do
      expect(instance.ts_full_amount).to be(true).or be(false)
    end
  end

  describe 'test attribute "imported_by"' do
    it 'should work' do
      expect(instance.imported_by).to be_a_kind_of(String)
    end
  end

end
