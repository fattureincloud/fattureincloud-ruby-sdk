=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.25
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  # Access to functions for this company.
  class CompanyInfoPlanInfoFunctions
    attr_accessor :archive

    attr_accessor :cerved

    attr_accessor :document_attachments

    attr_accessor :e_invoice

    attr_accessor :genius

    attr_accessor :mail_tracking

    attr_accessor :payment_notifications

    attr_accessor :paypal

    attr_accessor :receipts

    attr_accessor :recurring

    attr_accessor :smtp

    attr_accessor :sofort

    attr_accessor :stock

    attr_accessor :subaccounts

    attr_accessor :tessera_sanitaria

    attr_accessor :ts_digital

    attr_accessor :ts_invoice_trading

    attr_accessor :ts_pay

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'archive' => :'archive',
        :'cerved' => :'cerved',
        :'document_attachments' => :'document_attachments',
        :'e_invoice' => :'e_invoice',
        :'genius' => :'genius',
        :'mail_tracking' => :'mail_tracking',
        :'payment_notifications' => :'payment_notifications',
        :'paypal' => :'paypal',
        :'receipts' => :'receipts',
        :'recurring' => :'recurring',
        :'smtp' => :'smtp',
        :'sofort' => :'sofort',
        :'stock' => :'stock',
        :'subaccounts' => :'subaccounts',
        :'tessera_sanitaria' => :'tessera_sanitaria',
        :'ts_digital' => :'ts_digital',
        :'ts_invoice_trading' => :'ts_invoice_trading',
        :'ts_pay' => :'ts_pay'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'archive' => :'Boolean',
        :'cerved' => :'Boolean',
        :'document_attachments' => :'Boolean',
        :'e_invoice' => :'Boolean',
        :'genius' => :'Boolean',
        :'mail_tracking' => :'Boolean',
        :'payment_notifications' => :'Boolean',
        :'paypal' => :'Boolean',
        :'receipts' => :'Boolean',
        :'recurring' => :'Boolean',
        :'smtp' => :'Boolean',
        :'sofort' => :'Boolean',
        :'stock' => :'Boolean',
        :'subaccounts' => :'Boolean',
        :'tessera_sanitaria' => :'Boolean',
        :'ts_digital' => :'Boolean',
        :'ts_invoice_trading' => :'Boolean',
        :'ts_pay' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'archive',
        :'cerved',
        :'document_attachments',
        :'e_invoice',
        :'genius',
        :'mail_tracking',
        :'payment_notifications',
        :'paypal',
        :'receipts',
        :'recurring',
        :'smtp',
        :'sofort',
        :'stock',
        :'subaccounts',
        :'tessera_sanitaria',
        :'ts_digital',
        :'ts_invoice_trading',
        :'ts_pay'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::CompanyInfoPlanInfoFunctions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::CompanyInfoPlanInfoFunctions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'archive')
        self.archive = attributes[:'archive']
      end

      if attributes.key?(:'cerved')
        self.cerved = attributes[:'cerved']
      end

      if attributes.key?(:'document_attachments')
        self.document_attachments = attributes[:'document_attachments']
      end

      if attributes.key?(:'e_invoice')
        self.e_invoice = attributes[:'e_invoice']
      end

      if attributes.key?(:'genius')
        self.genius = attributes[:'genius']
      end

      if attributes.key?(:'mail_tracking')
        self.mail_tracking = attributes[:'mail_tracking']
      end

      if attributes.key?(:'payment_notifications')
        self.payment_notifications = attributes[:'payment_notifications']
      end

      if attributes.key?(:'paypal')
        self.paypal = attributes[:'paypal']
      end

      if attributes.key?(:'receipts')
        self.receipts = attributes[:'receipts']
      end

      if attributes.key?(:'recurring')
        self.recurring = attributes[:'recurring']
      end

      if attributes.key?(:'smtp')
        self.smtp = attributes[:'smtp']
      end

      if attributes.key?(:'sofort')
        self.sofort = attributes[:'sofort']
      end

      if attributes.key?(:'stock')
        self.stock = attributes[:'stock']
      end

      if attributes.key?(:'subaccounts')
        self.subaccounts = attributes[:'subaccounts']
      end

      if attributes.key?(:'tessera_sanitaria')
        self.tessera_sanitaria = attributes[:'tessera_sanitaria']
      end

      if attributes.key?(:'ts_digital')
        self.ts_digital = attributes[:'ts_digital']
      end

      if attributes.key?(:'ts_invoice_trading')
        self.ts_invoice_trading = attributes[:'ts_invoice_trading']
      end

      if attributes.key?(:'ts_pay')
        self.ts_pay = attributes[:'ts_pay']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          archive == o.archive &&
          cerved == o.cerved &&
          document_attachments == o.document_attachments &&
          e_invoice == o.e_invoice &&
          genius == o.genius &&
          mail_tracking == o.mail_tracking &&
          payment_notifications == o.payment_notifications &&
          paypal == o.paypal &&
          receipts == o.receipts &&
          recurring == o.recurring &&
          smtp == o.smtp &&
          sofort == o.sofort &&
          stock == o.stock &&
          subaccounts == o.subaccounts &&
          tessera_sanitaria == o.tessera_sanitaria &&
          ts_digital == o.ts_digital &&
          ts_invoice_trading == o.ts_invoice_trading &&
          ts_pay == o.ts_pay
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [archive, cerved, document_attachments, e_invoice, genius, mail_tracking, payment_notifications, paypal, receipts, recurring, smtp, sofort, stock, subaccounts, tessera_sanitaria, ts_digital, ts_invoice_trading, ts_pay].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      when :Hash
        value
      else # model
        # models (e.g. Pet) or oneOf
        klass = FattureInCloud_Ruby_Sdk.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
