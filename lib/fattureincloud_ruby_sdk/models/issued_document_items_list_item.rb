=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.19
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class IssuedDocumentItemsListItem
    # Unique identifier.
    attr_accessor :id

    # Unique identifier of the product.
    attr_accessor :product_id

    # Product code.
    attr_accessor :code

    # Product name.
    attr_accessor :name

    # Product category
    attr_accessor :category

    # Product description.
    attr_accessor :description

    # Items quantity,
    attr_accessor :qty

    # Item measure.
    attr_accessor :measure

    # Net price.
    attr_accessor :net_price

    # Gross price.
    attr_accessor :gross_price

    attr_accessor :vat

    attr_accessor :not_taxable

    # Apply withholding taxes, rivalsa and cassa.
    attr_accessor :apply_withholding_taxes

    # Discount percentual value.
    attr_accessor :discount

    attr_accessor :discount_highlight

    attr_accessor :in_ddt

    attr_accessor :stock

    # Advanced raw attributes for e-invoices.
    attr_accessor :ei_raw

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'product_id' => :'product_id',
        :'code' => :'code',
        :'name' => :'name',
        :'category' => :'category',
        :'description' => :'description',
        :'qty' => :'qty',
        :'measure' => :'measure',
        :'net_price' => :'net_price',
        :'gross_price' => :'gross_price',
        :'vat' => :'vat',
        :'not_taxable' => :'not_taxable',
        :'apply_withholding_taxes' => :'apply_withholding_taxes',
        :'discount' => :'discount',
        :'discount_highlight' => :'discount_highlight',
        :'in_ddt' => :'in_ddt',
        :'stock' => :'stock',
        :'ei_raw' => :'ei_raw'
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
        :'product_id' => :'Integer',
        :'code' => :'String',
        :'name' => :'String',
        :'category' => :'String',
        :'description' => :'String',
        :'qty' => :'Float',
        :'measure' => :'String',
        :'net_price' => :'Float',
        :'gross_price' => :'Float',
        :'vat' => :'VatType',
        :'not_taxable' => :'Boolean',
        :'apply_withholding_taxes' => :'Boolean',
        :'discount' => :'Float',
        :'discount_highlight' => :'Boolean',
        :'in_ddt' => :'Boolean',
        :'stock' => :'Boolean',
        :'ei_raw' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'product_id',
        :'code',
        :'name',
        :'category',
        :'description',
        :'qty',
        :'measure',
        :'net_price',
        :'gross_price',
        :'vat',
        :'not_taxable',
        :'apply_withholding_taxes',
        :'discount',
        :'discount_highlight',
        :'in_ddt',
        :'stock',
        :'ei_raw'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::IssuedDocumentItemsListItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::IssuedDocumentItemsListItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'qty')
        self.qty = attributes[:'qty']
      end

      if attributes.key?(:'measure')
        self.measure = attributes[:'measure']
      end

      if attributes.key?(:'net_price')
        self.net_price = attributes[:'net_price']
      end

      if attributes.key?(:'gross_price')
        self.gross_price = attributes[:'gross_price']
      end

      if attributes.key?(:'vat')
        self.vat = attributes[:'vat']
      end

      if attributes.key?(:'not_taxable')
        self.not_taxable = attributes[:'not_taxable']
      end

      if attributes.key?(:'apply_withholding_taxes')
        self.apply_withholding_taxes = attributes[:'apply_withholding_taxes']
      end

      if attributes.key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.key?(:'discount_highlight')
        self.discount_highlight = attributes[:'discount_highlight']
      end

      if attributes.key?(:'in_ddt')
        self.in_ddt = attributes[:'in_ddt']
      end

      if attributes.key?(:'stock')
        self.stock = attributes[:'stock']
      end

      if attributes.key?(:'ei_raw')
        self.ei_raw = attributes[:'ei_raw']
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
          product_id == o.product_id &&
          code == o.code &&
          name == o.name &&
          category == o.category &&
          description == o.description &&
          qty == o.qty &&
          measure == o.measure &&
          net_price == o.net_price &&
          gross_price == o.gross_price &&
          vat == o.vat &&
          not_taxable == o.not_taxable &&
          apply_withholding_taxes == o.apply_withholding_taxes &&
          discount == o.discount &&
          discount_highlight == o.discount_highlight &&
          in_ddt == o.in_ddt &&
          stock == o.stock &&
          ei_raw == o.ei_raw
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, product_id, code, name, category, description, qty, measure, net_price, gross_price, vat, not_taxable, apply_withholding_taxes, discount, discount_highlight, in_ddt, stock, ei_raw].hash
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
