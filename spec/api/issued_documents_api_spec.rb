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

# Unit tests for FattureInCloud_Ruby_Sdk::IssuedDocumentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IssuedDocumentsApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::IssuedDocumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IssuedDocumentsApi' do
    it 'should create an instance of IssuedDocumentsApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::IssuedDocumentsApi)
    end
  end

  # unit tests for create_issued_document
  # Create Issued Document
  # Creates a new document.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateIssuedDocumentRequest] :create_issued_document_request The Issued Document
  # @return [CreateIssuedDocumentResponse]
  describe 'create_issued_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_issued_document
  # Delete Issued Document
  # Deletes the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_issued_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_issued_document_attachment
  # Delete Issued Document Attachment
  # Removes the attachment of the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_issued_document_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_data
  # Get Email Data
  # Gets the pre-compiled email details.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [GetEmailDataResponse]
  describe 'get_email_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_existing_issued_document_totals
  # Get Existing Issued Document Totals
  # Returns the totals for a specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [GetExistingIssuedDocumentTotalsRequest] :get_existing_issued_document_totals_request 
  # @return [GetExistingIssuedDocumentTotalsResponse]
  describe 'get_existing_issued_document_totals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_issued_document
  # Get Issued Document
  # Gets the specified document. 
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetIssuedDocumentResponse]
  describe 'get_issued_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_issued_document_pre_create_info
  # Get Issued Document Pre-create info
  # Retrieves the information useful while creating a new document.
  # @param company_id The ID of the company.
  # @param type The type of the issued document.
  # @param [Hash] opts the optional parameters
  # @return [GetIssuedDocumentPreCreateInfoResponse]
  describe 'get_issued_document_pre_create_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_new_issued_document_totals
  # Get New Issued Document Totals
  # Returns the totals for a new document.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [GetNewIssuedDocumentTotalsRequest] :get_new_issued_document_totals_request 
  # @return [GetNewIssuedDocumentTotalsResponse]
  describe 'get_new_issued_document_totals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_issued_documents
  # List Issued Documents
  # Lists the issued documents.
  # @param company_id The ID of the company.
  # @param type The type of the issued document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @return [ListIssuedDocumentsResponse]
  describe 'list_issued_documents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_issued_document
  # Modify Issued Document
  # Modifies the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyIssuedDocumentRequest] :modify_issued_document_request The modified document
  # @return [ModifyIssuedDocumentResponse]
  describe 'modify_issued_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for schedule_email
  # Schedule Email
  # Schedules the sending of a document by email.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [ScheduleEmailRequest] :schedule_email_request Email Schedule
  # @return [nil]
  describe 'schedule_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_issued_document_attachment
  # Upload Issued Document Attachment
  # Uploads an attachment destined to an issued document. The actual association between the document and the attachment must be implemented separately, using the returned token.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filename Name of the file.
  # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
  # @return [UploadIssuedDocumentAttachmentResponse]
  describe 'upload_issued_document_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
