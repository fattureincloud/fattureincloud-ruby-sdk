=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.1.2
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class TaxProfile
    # The company type
    attr_accessor :company_type

    # The company subtype
    attr_accessor :company_subtype

    # The profession
    attr_accessor :profession

    # The applied regime
    attr_accessor :regime

    # The name of the rivalsa
    attr_accessor :rivalsa_name

    # The default rivalsa amount
    attr_accessor :default_rivalsa

    # The name of the cassa
    attr_accessor :cassa_name

    # The default cassa amount
    attr_accessor :default_cassa

    # The default taxable amount for the cassa
    attr_accessor :default_cassa_taxable

    # The name of the second cassa
    attr_accessor :cassa2_name

    # The default second cassa amount
    attr_accessor :default_cassa2

    # The default taxable amount for the second cassa
    attr_accessor :default_cassa2_taxable

    # The default withholding tax
    attr_accessor :default_withholding_tax

    # The default taxable amount for the withholding tax
    attr_accessor :default_withholding_tax_taxable

    # The default other withholding tax
    attr_accessor :default_other_withholding_tax

    # If it has enasarco
    attr_accessor :enasarco

    # The enasarco type
    attr_accessor :enasarco_type

    # The contributions percentage
    attr_accessor :contributions_percentage

    # The profit coefficient
    attr_accessor :profit_coefficient

    # If the health card system is active
    attr_accessor :med

    attr_accessor :default_vat

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company_type' => :'company_type',
        :'company_subtype' => :'company_subtype',
        :'profession' => :'profession',
        :'regime' => :'regime',
        :'rivalsa_name' => :'rivalsa_name',
        :'default_rivalsa' => :'default_rivalsa',
        :'cassa_name' => :'cassa_name',
        :'default_cassa' => :'default_cassa',
        :'default_cassa_taxable' => :'default_cassa_taxable',
        :'cassa2_name' => :'cassa2_name',
        :'default_cassa2' => :'default_cassa2',
        :'default_cassa2_taxable' => :'default_cassa2_taxable',
        :'default_withholding_tax' => :'default_withholding_tax',
        :'default_withholding_tax_taxable' => :'default_withholding_tax_taxable',
        :'default_other_withholding_tax' => :'default_other_withholding_tax',
        :'enasarco' => :'enasarco',
        :'enasarco_type' => :'enasarco_type',
        :'contributions_percentage' => :'contributions_percentage',
        :'profit_coefficient' => :'profit_coefficient',
        :'med' => :'med',
        :'default_vat' => :'default_vat'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'company_type' => :'String',
        :'company_subtype' => :'String',
        :'profession' => :'String',
        :'regime' => :'String',
        :'rivalsa_name' => :'String',
        :'default_rivalsa' => :'Float',
        :'cassa_name' => :'String',
        :'default_cassa' => :'Float',
        :'default_cassa_taxable' => :'Float',
        :'cassa2_name' => :'String',
        :'default_cassa2' => :'Float',
        :'default_cassa2_taxable' => :'Float',
        :'default_withholding_tax' => :'Float',
        :'default_withholding_tax_taxable' => :'Float',
        :'default_other_withholding_tax' => :'Float',
        :'enasarco' => :'Boolean',
        :'enasarco_type' => :'String',
        :'contributions_percentage' => :'Float',
        :'profit_coefficient' => :'Float',
        :'med' => :'Boolean',
        :'default_vat' => :'VatType'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'company_type',
        :'company_subtype',
        :'profession',
        :'regime',
        :'rivalsa_name',
        :'default_rivalsa',
        :'cassa_name',
        :'default_cassa',
        :'default_cassa_taxable',
        :'cassa2_name',
        :'default_cassa2',
        :'default_cassa2_taxable',
        :'default_withholding_tax',
        :'default_withholding_tax_taxable',
        :'default_other_withholding_tax',
        :'enasarco',
        :'enasarco_type',
        :'contributions_percentage',
        :'profit_coefficient',
        :'med',
        :'default_vat'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::TaxProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::TaxProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'company_type')
        self.company_type = attributes[:'company_type']
      end

      if attributes.key?(:'company_subtype')
        self.company_subtype = attributes[:'company_subtype']
      end

      if attributes.key?(:'profession')
        self.profession = attributes[:'profession']
      end

      if attributes.key?(:'regime')
        self.regime = attributes[:'regime']
      end

      if attributes.key?(:'rivalsa_name')
        self.rivalsa_name = attributes[:'rivalsa_name']
      end

      if attributes.key?(:'default_rivalsa')
        self.default_rivalsa = attributes[:'default_rivalsa']
      end

      if attributes.key?(:'cassa_name')
        self.cassa_name = attributes[:'cassa_name']
      end

      if attributes.key?(:'default_cassa')
        self.default_cassa = attributes[:'default_cassa']
      end

      if attributes.key?(:'default_cassa_taxable')
        self.default_cassa_taxable = attributes[:'default_cassa_taxable']
      end

      if attributes.key?(:'cassa2_name')
        self.cassa2_name = attributes[:'cassa2_name']
      end

      if attributes.key?(:'default_cassa2')
        self.default_cassa2 = attributes[:'default_cassa2']
      end

      if attributes.key?(:'default_cassa2_taxable')
        self.default_cassa2_taxable = attributes[:'default_cassa2_taxable']
      end

      if attributes.key?(:'default_withholding_tax')
        self.default_withholding_tax = attributes[:'default_withholding_tax']
      end

      if attributes.key?(:'default_withholding_tax_taxable')
        self.default_withholding_tax_taxable = attributes[:'default_withholding_tax_taxable']
      end

      if attributes.key?(:'default_other_withholding_tax')
        self.default_other_withholding_tax = attributes[:'default_other_withholding_tax']
      end

      if attributes.key?(:'enasarco')
        self.enasarco = attributes[:'enasarco']
      end

      if attributes.key?(:'enasarco_type')
        self.enasarco_type = attributes[:'enasarco_type']
      end

      if attributes.key?(:'contributions_percentage')
        self.contributions_percentage = attributes[:'contributions_percentage']
      end

      if attributes.key?(:'profit_coefficient')
        self.profit_coefficient = attributes[:'profit_coefficient']
      end

      if attributes.key?(:'med')
        self.med = attributes[:'med']
      end

      if attributes.key?(:'default_vat')
        self.default_vat = attributes[:'default_vat']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          company_type == o.company_type &&
          company_subtype == o.company_subtype &&
          profession == o.profession &&
          regime == o.regime &&
          rivalsa_name == o.rivalsa_name &&
          default_rivalsa == o.default_rivalsa &&
          cassa_name == o.cassa_name &&
          default_cassa == o.default_cassa &&
          default_cassa_taxable == o.default_cassa_taxable &&
          cassa2_name == o.cassa2_name &&
          default_cassa2 == o.default_cassa2 &&
          default_cassa2_taxable == o.default_cassa2_taxable &&
          default_withholding_tax == o.default_withholding_tax &&
          default_withholding_tax_taxable == o.default_withholding_tax_taxable &&
          default_other_withholding_tax == o.default_other_withholding_tax &&
          enasarco == o.enasarco &&
          enasarco_type == o.enasarco_type &&
          contributions_percentage == o.contributions_percentage &&
          profit_coefficient == o.profit_coefficient &&
          med == o.med &&
          default_vat == o.default_vat
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [company_type, company_subtype, profession, regime, rivalsa_name, default_rivalsa, cassa_name, default_cassa, default_cassa_taxable, cassa2_name, default_cassa2, default_cassa2_taxable, default_withholding_tax, default_withholding_tax_taxable, default_other_withholding_tax, enasarco, enasarco_type, contributions_percentage, profit_coefficient, med, default_vat].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
