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
  # 
  class Receipt
    # Receipt unique identifier.
    attr_accessor :id

    # Receipt date.
    attr_accessor :date

    # Receipt number.
    attr_accessor :number

    # If it's null or empty string use the default numeration.
    attr_accessor :numeration

    # Total net amount.
    attr_accessor :amount_net

    # Total vat amount.
    attr_accessor :amount_vat

    # Total gross amount.
    attr_accessor :amount_gross

    attr_accessor :use_gross_prices

    attr_accessor :type

    # Receipt description.
    attr_accessor :description

    # Revenue center.
    attr_accessor :rc_center

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :payment_account

    attr_accessor :items_list

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'date' => :'date',
        :'number' => :'number',
        :'numeration' => :'numeration',
        :'amount_net' => :'amount_net',
        :'amount_vat' => :'amount_vat',
        :'amount_gross' => :'amount_gross',
        :'use_gross_prices' => :'use_gross_prices',
        :'type' => :'type',
        :'description' => :'description',
        :'rc_center' => :'rc_center',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'payment_account' => :'payment_account',
        :'items_list' => :'items_list'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'date' => :'Date',
        :'number' => :'Float',
        :'numeration' => :'String',
        :'amount_net' => :'Float',
        :'amount_vat' => :'Float',
        :'amount_gross' => :'Float',
        :'use_gross_prices' => :'Boolean',
        :'type' => :'ReceiptType',
        :'description' => :'String',
        :'rc_center' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'payment_account' => :'PaymentAccount',
        :'items_list' => :'Array<ReceiptItemsListItem>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'date',
        :'number',
        :'numeration',
        :'amount_net',
        :'amount_vat',
        :'amount_gross',
        :'use_gross_prices',
        :'description',
        :'rc_center',
        :'created_at',
        :'updated_at',
        :'payment_account',
        :'items_list'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::Receipt` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::Receipt`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'numeration')
        self.numeration = attributes[:'numeration']
      end

      if attributes.key?(:'amount_net')
        self.amount_net = attributes[:'amount_net']
      end

      if attributes.key?(:'amount_vat')
        self.amount_vat = attributes[:'amount_vat']
      end

      if attributes.key?(:'amount_gross')
        self.amount_gross = attributes[:'amount_gross']
      end

      if attributes.key?(:'use_gross_prices')
        self.use_gross_prices = attributes[:'use_gross_prices']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'rc_center')
        self.rc_center = attributes[:'rc_center']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'payment_account')
        self.payment_account = attributes[:'payment_account']
      end

      if attributes.key?(:'items_list')
        if (value = attributes[:'items_list']).is_a?(Array)
          self.items_list = value
        end
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
          id == o.id &&
          date == o.date &&
          number == o.number &&
          numeration == o.numeration &&
          amount_net == o.amount_net &&
          amount_vat == o.amount_vat &&
          amount_gross == o.amount_gross &&
          use_gross_prices == o.use_gross_prices &&
          type == o.type &&
          description == o.description &&
          rc_center == o.rc_center &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          payment_account == o.payment_account &&
          items_list == o.items_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, date, number, numeration, amount_net, amount_vat, amount_gross, use_gross_prices, type, description, rc_center, created_at, updated_at, payment_account, items_list].hash
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
