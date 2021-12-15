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

# Unit tests for FattureInCloud_Ruby_Sdk::ListArchiveDocumentsResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ListArchiveDocumentsResponse do
  instance = FattureInCloud_Ruby_Sdk::ListArchiveDocumentsResponse.new
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
      {
        id: 12345,
        date: "2021-08-20",
        category: "Altri documenti",
        description: "spesa 2",
        attachment_url: "spesa2.pdf"
      },
      {
        id: 12346,
        date: "2021-08-19",
        category: "Altri documenti",
        description: "spesa 1",
        attachment_url: "spesa1.pdf"
      }
    ]

  describe 'test an instance of ListArchiveDocumentsResponse' do
    it 'should create an instance of ListArchiveDocumentsResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ListArchiveDocumentsResponse)
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
