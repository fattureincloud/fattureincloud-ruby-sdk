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

# Unit tests for FattureInCloud_Ruby_Sdk::GetEmailDataResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::GetEmailDataResponse do
  instance = FattureInCloud_Ruby_Sdk::GetEmailDataResponse.new
  instance.data = {
    recipient_email: "mary.red@example.com",
    default_sender_email: {
      id: 0,
      email: "no-reply@fattureincloud.it"
    },
    sender_emails_list: [
      {
        id: 0,
        email: "no-reply@fattureincloud.it"
      },
      {
        id: 888,
        email: "mariorossi@fattureincloud.it"
      }
    ],
    cc_email: "m.rossi@exxample.com",
    subject: "Nostra pro forma nr. 1",
    body: "Gentile Mario Rossi,<br>per vedere la nostra pro forma di  o per scaricarne una copia in versione PDF prema sul bottone sottoastante.<br><br>{{allegati}}<br><br>Cordiali saluti,<br><b>Mario Rossi</b>",
    document_exists: true,
    delivery_note_exists: false,
    attachment_exists: false,
    accompanying_invoice_exists: false
  }

  describe 'test an instance of GetEmailDataResponse' do
    it 'should create an instance of GetEmailDataResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::GetEmailDataResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      expect(instance.data).to be_a_kind_of(Object)
    end
  end

end
