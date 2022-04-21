=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.15
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class Product
    # Unique identifier.
    attr_accessor :id

    # Product name.
    attr_accessor :name

    # Product code.
    attr_accessor :code

    # Net sale price (used if use_gross_price is false, otherwise it's competed automatically).
    attr_accessor :net_price

    # Gross sale price (used if use_gross_price is false, otherwise it's competed automatically).
    attr_accessor :gross_price

    # Determine which price to use for calculations.
    attr_accessor :use_gross_price

    attr_accessor :default_vat

    # Net cost of the product (used for received documents).
    attr_accessor :net_cost

    # Unit of measure.
    attr_accessor :measure

    # Product description.
    attr_accessor :description

    # Product category.
    attr_accessor :category

    # Extra notes.
    attr_accessor :notes

    # Determine if the product is in stock.
    attr_accessor :in_stock

    # Product initial stock.
    attr_accessor :stock_initial

    # [Read Only] Product current stock.
    attr_accessor :stock_current

    # Product average cost.
    attr_accessor :average_cost

    # Product average price.
    attr_accessor :average_price

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'code' => :'code',
        :'net_price' => :'net_price',
        :'gross_price' => :'gross_price',
        :'use_gross_price' => :'use_gross_price',
        :'default_vat' => :'default_vat',
        :'net_cost' => :'net_cost',
        :'measure' => :'measure',
        :'description' => :'description',
        :'category' => :'category',
        :'notes' => :'notes',
        :'in_stock' => :'in_stock',
        :'stock_initial' => :'stock_initial',
        :'stock_current' => :'stock_current',
        :'average_cost' => :'average_cost',
        :'average_price' => :'average_price',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
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
        :'name' => :'String',
        :'code' => :'String',
        :'net_price' => :'Float',
        :'gross_price' => :'Float',
        :'use_gross_price' => :'Boolean',
        :'default_vat' => :'VatType',
        :'net_cost' => :'Float',
        :'measure' => :'String',
        :'description' => :'String',
        :'category' => :'String',
        :'notes' => :'String',
        :'in_stock' => :'Boolean',
        :'stock_initial' => :'Float',
        :'stock_current' => :'Float',
        :'average_cost' => :'Float',
        :'average_price' => :'Float',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'name',
        :'code',
        :'net_price',
        :'gross_price',
        :'use_gross_price',
        :'default_vat',
        :'net_cost',
        :'measure',
        :'description',
        :'category',
        :'notes',
        :'in_stock',
        :'stock_initial',
        :'stock_current',
        :'average_cost',
        :'average_price',
        :'created_at',
        :'updated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::Product` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::Product`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'net_price')
        self.net_price = attributes[:'net_price']
      end

      if attributes.key?(:'gross_price')
        self.gross_price = attributes[:'gross_price']
      end

      if attributes.key?(:'use_gross_price')
        self.use_gross_price = attributes[:'use_gross_price']
      end

      if attributes.key?(:'default_vat')
        self.default_vat = attributes[:'default_vat']
      end

      if attributes.key?(:'net_cost')
        self.net_cost = attributes[:'net_cost']
      end

      if attributes.key?(:'measure')
        self.measure = attributes[:'measure']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'in_stock')
        self.in_stock = attributes[:'in_stock']
      end

      if attributes.key?(:'stock_initial')
        self.stock_initial = attributes[:'stock_initial']
      end

      if attributes.key?(:'stock_current')
        self.stock_current = attributes[:'stock_current']
      end

      if attributes.key?(:'average_cost')
        self.average_cost = attributes[:'average_cost']
      end

      if attributes.key?(:'average_price')
        self.average_price = attributes[:'average_price']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
          name == o.name &&
          code == o.code &&
          net_price == o.net_price &&
          gross_price == o.gross_price &&
          use_gross_price == o.use_gross_price &&
          default_vat == o.default_vat &&
          net_cost == o.net_cost &&
          measure == o.measure &&
          description == o.description &&
          category == o.category &&
          notes == o.notes &&
          in_stock == o.in_stock &&
          stock_initial == o.stock_initial &&
          stock_current == o.stock_current &&
          average_cost == o.average_cost &&
          average_price == o.average_price &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, code, net_price, gross_price, use_gross_price, default_vat, net_cost, measure, description, category, notes, in_stock, stock_initial, stock_current, average_cost, average_price, created_at, updated_at].hash
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
