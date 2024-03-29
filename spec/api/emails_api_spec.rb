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

# Unit tests for FattureInCloud_Ruby_Sdk::EmailsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailsApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::EmailsApi.new

    @list_emails_response_obj = { "current_page": 1, "data": [{ "id": 1, "status": "sent", "sent_date": "2022-07-17 13:53:12", "errors_count": 0, "error_log": "", "from_email": "test@mail.it", "from_name": "Test mail", "to_email": "mail@test.it", "to_name": "Mario", "subject": "Test", "content": "Test send email", "copy_to": "", "recipient_status": "unknown", "recipient_date": nil, "kind": "Fatture", "attachments": [] }, { "id": 2, "status": "sent", "sent_date": "2022-07-18 13:53:12", "errors_count": 0, "error_log": "", "from_email": "test@mail.it", "from_name": "Test mail", "to_email": "mail@test.it", "to_name": "Maria", "subject": "Test", "content": "Test send email", "copy_to": "", "recipient_status": "unknown", "recipient_date": nil, "kind": "Fatture", "attachments": [] }], "first_page_url": "emails?page=1", "next_page_url": "emails?page=1", "from": 1, "last_page": 1, "last_page_url": "emails?page=1", "path": "emails", "per_page": 50, "prev_page_url": "emails?page=1", "to": 2, "total": 2 }
    allow(@api_instance).to receive(:list_emails) { @list_emails_response_obj }

  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailsApi' do
    it 'should create an instance of EmailsApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::EmailsApi)
    end
  end

  # unit tests for list_emails
  # List emails
  # List Emails.
  # @param company_id 
  # @param [Hash] opts the optional parameters
  # @return [ListEmailsResponse]
  describe 'list_emails test' do
    it 'should work' do
      response = @api_instance.list_emails(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_emails_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
