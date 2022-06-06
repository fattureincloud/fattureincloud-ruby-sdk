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
  # Default values for the document.
  class IssuedDocumentPreCreateInfoDefaultValues
    attr_accessor :default_template

    attr_accessor :dn_template

    attr_accessor :ai_template

    # Default notes.
    attr_accessor :notes

    # Default rivalsa percentage.
    attr_accessor :rivalsa

    # Default cassa percentage.
    attr_accessor :cassa

    # Default withholding tax percentage.
    attr_accessor :withholding_tax

    # Default withholding tax taxable percentage.
    attr_accessor :withholding_tax_taxable

    # Default other withholding tax percentage.
    attr_accessor :other_withholding_tax

    # Use gross price by default.
    attr_accessor :use_gross_prices

    attr_accessor :payment_method

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'default_template' => :'default_template',
        :'dn_template' => :'dn_template',
        :'ai_template' => :'ai_template',
        :'notes' => :'notes',
        :'rivalsa' => :'rivalsa',
        :'cassa' => :'cassa',
        :'withholding_tax' => :'withholding_tax',
        :'withholding_tax_taxable' => :'withholding_tax_taxable',
        :'other_withholding_tax' => :'other_withholding_tax',
        :'use_gross_prices' => :'use_gross_prices',
        :'payment_method' => :'payment_method'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'default_template' => :'DocumentTemplate',
        :'dn_template' => :'DocumentTemplate',
        :'ai_template' => :'DocumentTemplate',
        :'notes' => :'String',
        :'rivalsa' => :'Float',
        :'cassa' => :'Float',
        :'withholding_tax' => :'Float',
        :'withholding_tax_taxable' => :'Float',
        :'other_withholding_tax' => :'Float',
        :'use_gross_prices' => :'Boolean',
        :'payment_method' => :'PaymentMethod'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'notes',
        :'rivalsa',
        :'cassa',
        :'withholding_tax',
        :'withholding_tax_taxable',
        :'other_withholding_tax',
        :'use_gross_prices',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::IssuedDocumentPreCreateInfoDefaultValues` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::IssuedDocumentPreCreateInfoDefaultValues`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'default_template')
        self.default_template = attributes[:'default_template']
      end

      if attributes.key?(:'dn_template')
        self.dn_template = attributes[:'dn_template']
      end

      if attributes.key?(:'ai_template')
        self.ai_template = attributes[:'ai_template']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'rivalsa')
        self.rivalsa = attributes[:'rivalsa']
      end

      if attributes.key?(:'cassa')
        self.cassa = attributes[:'cassa']
      end

      if attributes.key?(:'withholding_tax')
        self.withholding_tax = attributes[:'withholding_tax']
      end

      if attributes.key?(:'withholding_tax_taxable')
        self.withholding_tax_taxable = attributes[:'withholding_tax_taxable']
      end

      if attributes.key?(:'other_withholding_tax')
        self.other_withholding_tax = attributes[:'other_withholding_tax']
      end

      if attributes.key?(:'use_gross_prices')
        self.use_gross_prices = attributes[:'use_gross_prices']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
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
          default_template == o.default_template &&
          dn_template == o.dn_template &&
          ai_template == o.ai_template &&
          notes == o.notes &&
          rivalsa == o.rivalsa &&
          cassa == o.cassa &&
          withholding_tax == o.withholding_tax &&
          withholding_tax_taxable == o.withholding_tax_taxable &&
          other_withholding_tax == o.other_withholding_tax &&
          use_gross_prices == o.use_gross_prices &&
          payment_method == o.payment_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [default_template, dn_template, ai_template, notes, rivalsa, cassa, withholding_tax, withholding_tax_taxable, other_withholding_tax, use_gross_prices, payment_method].hash
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
