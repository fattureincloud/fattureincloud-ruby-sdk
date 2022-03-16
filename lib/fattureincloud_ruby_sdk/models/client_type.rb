=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.14
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class ClientType
    COMPANY = "company".freeze
    PERSON = "person".freeze
    PA = "pa".freeze
    CONDO = "condo".freeze

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
      constantValues = ClientType.constants.select { |c| ClientType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ClientType" if constantValues.empty?
      value
    end
  end
end
