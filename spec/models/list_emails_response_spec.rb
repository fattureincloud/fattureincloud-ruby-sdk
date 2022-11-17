=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.22
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FattureInCloud_Ruby_Sdk::ListEmailsResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ListEmailsResponse do
  instance = FattureInCloud_Ruby_Sdk::ListEmailsResponse.new
  e1 = FattureInCloud_Ruby_Sdk::Email.new
    e1.id = 1
    e1.status = "sent"
    e1.sent_date = Time.new(2022, 07, 17, 13, 53, 12)
    e1.errors_count = 0
    e1.error_log = ""
    e1.from_email = "test@mail.it"
    e1.from_name = "Test mail"
    e1.to_email = "mail@test.it"
    e1.to_name = "Mario"
    e1.subject = "Test"
    e1.content = "Test send email"
    e1.copy_to = ""
    e1.recipient_status = "unknown"
    e1.recipient_date = Time.new(2022, 07, 17, 13, 53, 12)
    e1.kind = "Fatture"
    e1.attachments = []
  e2 = FattureInCloud_Ruby_Sdk::Email.new
    e2.id = 2
    e2.status = "sent"
    e2.sent_date = Time.new(2022, 07, 17, 13, 53, 12)
    e2.errors_count = 0
    e2.error_log = ""
    e2.from_email = "test@mail.it"
    e2.from_name = "Test mail"
    e2.to_email = "mail@test.it"
    e2.to_name = "Mario"
    e2.subject = "Test"
    e2.content = "Test send email"
    e2.copy_to = ""
    e2.recipient_status = "unknown"
    e2.recipient_date = Time.new(2022, 07, 17, 13, 53, 12)
    e2.kind = "Fatture"
    e2.attachments = []
  instance.current_page = 2
  instance.first_page_url = "page=1"
  instance.from = 1
  instance.last_page = 3
  instance.last_page_url = "page=3"
  instance.next_page_url = "page=3"
  instance.path = "/archive"
  instance.per_page = 50
  instance.prev_page_url = "page=1"
  instance.to = 3
  instance.total = 155
  instance.data = [
    e1,
    e2
  ]

  describe 'test an instance of ListEmailsResponse' do
    it 'should create an instance of ListEmailsResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ListEmailsResponse)
    end
  end
  
  describe 'test attribute "current_page"' do
    it 'should work' do
      expect(instance.current_page).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "first_page_url"' do
    it 'should work' do
      expect(instance.first_page_url).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "from"' do
    it 'should work' do
      expect(instance.from).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "last_page"' do
    it 'should work' do
      expect(instance.last_page).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "last_page_url"' do
    it 'should work' do
      expect(instance.last_page_url).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "next_page_url"' do
    it 'should work' do
      expect(instance.next_page_url).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "path"' do
    it 'should work' do
      expect(instance.path).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "per_page"' do
    it 'should work' do
      expect(instance.per_page).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "prev_page_url"' do
    it 'should work' do
      expect(instance.prev_page_url).to be_a_kind_of(String)
    end
  end

  describe 'test attribute "to"' do
    it 'should work' do
      expect(instance.to).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "total"' do
    it 'should work' do
      expect(instance.total).to be_a_kind_of(Numeric)
    end
  end

  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end