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

# Unit tests for FattureInCloud_Ruby_Sdk::EmailSchedule
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::EmailSchedule do
  instance = FattureInCloud_Ruby_Sdk::EmailSchedule.new
  instance.sender_email = "mariorossi@fattureincloud.it"
  instance.sender_id = 5
  instance.recipient_email = "mary.red@example.com"
  instance.subject = "Nostra pro forma nr. 1"
  instance.body = "Gentile Mario Rossi<br>per vedere la nostra pro forma di  o per scaricarne una copia in versione PDF prema sul bottone sottostante.<br><br>{{allegati}}<br><br>Cordiali saluti<br><b>Mario Rossi</b>"
  instance.attach_pdf = true
  instance.include = {
      document: false,
      delivery_note: false,
      attachment: false,
      accompanying_invoice: false
  }
  instance.send_copy = false

  describe 'test an instance of EmailSchedule' do
    it 'should create an instance of EmailSchedule' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::EmailSchedule)
    end
  end
  describe 'test attribute "sender_id"' do
    it 'should work' do
      expect(instance.sender_id).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "sender_email"' do
    it 'should work' do
      expect(instance.sender_email).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "recipient_email"' do
    it 'should work' do
      expect(instance.recipient_email).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "subject"' do
    it 'should work' do
      expect(instance.subject).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "body"' do
    it 'should work' do
      expect(instance.body).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "include"' do
    it 'should work' do
      expect(instance.include).to be_a_kind_of(Object)
    end
  end

  describe 'test attribute "attach_pdf"' do
    it 'should work' do
      expect(instance.attach_pdf).to be(true).or be(false)
    end
  end

  describe 'test attribute "send_copy"' do
    it 'should work' do
      expect(instance.send_copy).to be(true).or be(false)
    end
  end

end
