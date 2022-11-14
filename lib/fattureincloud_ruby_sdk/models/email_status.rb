=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.21
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class EmailStatus
    SENDING = "sending".freeze
    PENDING = "pending".freeze
    SENT = "sent".freeze

    def self.all_vars
      @all_vars ||= [SENDING, PENDING, SENT].freeze
    end

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
      return value if EmailStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #EmailStatus"
    end
  end
end