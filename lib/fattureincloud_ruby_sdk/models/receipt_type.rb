=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.8
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class ReceiptType
    TILL_RECEIPT = "till_receipt".freeze
    SALES_RECEIPT = "sales_receipt".freeze

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
      constantValues = ReceiptType.constants.select { |c| ReceiptType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ReceiptType" if constantValues.empty?
      value
    end
  end
end
