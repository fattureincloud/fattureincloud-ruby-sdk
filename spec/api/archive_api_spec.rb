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

# Unit tests for FattureInCloud_Ruby_Sdk::ArchiveApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ArchiveApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::ArchiveApi.new

    @create_archive_document_response_obj = {"data":{"id":12345,"date":"2021-08-20","category":"Altri documenti","description":"spesa 2","attachment_url":"spesa2.pdf"}}
    allow(@api_instance).to receive(:create_archive_document) {@create_archive_document_response_obj}

    @get_archive_document_response_obj = {"data":{"id":12345,"date":"2021-08-20","category":"Altri documenti","description":"spesa 2","attachment_url":"spesa2.pdf"}}
    allow(@api_instance).to receive(:get_archive_document) {@get_archive_document_response_obj}

    @list_archive_documents_response_obj = {"current_page":1,"data":[{"id":12345,"date":"2021-08-20","category":"Altri documenti","description":"spesa 2","attachment_url":"spesa2.pdf"},{"id":12346,"date":"2021-08-19","category":"Altri documenti","description":"spesa 1","attachment_url":"spesa1.pdf"}],"first_page_url":"page=1","from":1,"last_page":1,"last_page_url":"page=1","next_page_url":nil,"path":"\/archive","per_page":50,"prev_page_url":nil,"to":2,"total":2}
    allow(@api_instance).to receive(:list_archive_documents) {@list_archive_documents_response_obj}
  
    @modify_archive_document_response_obj = {"data":{"id":12345,"date":"2021-08-20","category":"Altri documenti","description":"spesa 2","attachment_url":"spesa2.pdf"}}
    allow(@api_instance).to receive(:modify_archive_document) {@modify_archive_document_response_obj}

    @upload_archive_document_attachment_response_obj = {"data":{"attachment_token":"YmMyNWYxYzIwMTU3N2Y4ZGE3ZjZiMzg5OWY0ODNkZDQveXl5LmRvYw"}}
    allow(@api_instance).to receive(:upload_archive_document_attachment) {@upload_archive_document_attachment_response_obj}

  end
  after do
    # run after each test
  end

  describe 'test an instance of ArchiveApi' do
    it 'should create an instance of ArchiveApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ArchiveApi)
    end
  end

  # unit tests for create_archive_document
  # Create Archive Document
  # Creates a new archive document.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateArchiveDocumentRequest] :create_archive_document_request The Archive Document.
  # @return [CreateArchiveDocumentResponse]
  describe 'create_archive_document test' do
    it 'should work' do
      opts = {"data":{"date":"2021-08-20","category":"Altri documenti","description":"spesa 1","attachment_token":"YjFrbmNlc3E0NmNuaW5ocXQ0b2p0c202NG1ncWx6ZmsvZmlsZW5hbWU"}}
      response = @api_instance.create_archive_document(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_archive_document_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for delete_archive_document
  # Delete Archive Document
  # Deletes the specified archive document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_archive_document test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for get_archive_document
  # Get Archive Document
  # Gets the specified archive document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetArchiveDocumentResponse]
  describe 'get_archive_document test' do
    it 'should work' do
      response = @api_instance.get_archive_document(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_archive_document_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_archive_documents
  # List Archive Documents
  # Lists the archive documents.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @option opts [String] :query Query for filtering the results.
  # @return [ListArchiveDocumentsResponse]
  describe 'list_archive_documents test' do
    it 'should work' do
      response = @api_instance.list_archive_documents(2)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_archive_documents_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_archive_document
  # Modify Archive Document
  # Modifies the specified archive document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyArchiveDocumentRequest] :modify_archive_document_request Modified Archive Document
  # @return [ModifyArchiveDocumentResponse]
  describe 'modify_archive_document test' do
    it 'should work' do
      response = @api_instance.modify_archive_document(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_archive_document_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for upload_archive_document_attachment
  # Upload Archive Document Attachment
  # Uploads an attachment destined to an archive document. The actual association between the document and the attachment must be implemented separately, using the returned token.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filename Name of the file.
  # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
  # @return [UploadArchiveAttachmentResponse]
  describe 'upload_archive_document_attachment test' do
    it 'should work' do
      opts = {}
      response = @api_instance.upload_archive_document_attachment(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @upload_archive_document_attachment_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
