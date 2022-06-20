=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.18
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class IssuedDocumentType
    INVOICE = "invoice".freeze
    QUOTE = "quote".freeze
    PROFORMA = "proforma".freeze
    RECEIPT = "receipt".freeze
    DELIVERY_NOTE = "delivery_note".freeze
    CREDIT_NOTE = "credit_note".freeze
    ORDER = "order".freeze
    WORK_REPORT = "work_report".freeze
    SUPPLIER_ORDER = "supplier_order".freeze
    SELF_OWN_INVOICE = "self_own_invoice".freeze
    SELF_SUPPLIER_INVOICE = "self_supplier_invoice".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = IssuedDocumentType.constants.select { |c| IssuedDocumentType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #IssuedDocumentType" if constantValues.empty?
      value
    end
  end
end
