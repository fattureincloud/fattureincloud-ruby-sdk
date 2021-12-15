=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.7
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module FattureInCloud::Ruby::Sdk
  class ListIssuedDocumentsResponse
    # Current page number.
    attr_accessor :current_page

    # First page url.
    attr_accessor :first_page_url

    # First result of the page.
    attr_accessor :from

    # Last page number.
    attr_accessor :last_page

    # Last page url.
    attr_accessor :last_page_url

    # Next page url
    attr_accessor :next_page_url

    # Request path.
    attr_accessor :path

    # Number of result per page.
    attr_accessor :per_page

    # Previous page url.
    attr_accessor :prev_page_url

    # Last result of the page.
    attr_accessor :to

    # Total number of results
    attr_accessor :total

    attr_accessor :data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'current_page' => :'current_page',
        :'first_page_url' => :'first_page_url',
        :'from' => :'from',
        :'last_page' => :'last_page',
        :'last_page_url' => :'last_page_url',
        :'next_page_url' => :'next_page_url',
        :'path' => :'path',
        :'per_page' => :'per_page',
        :'prev_page_url' => :'prev_page_url',
        :'to' => :'to',
        :'total' => :'total',
        :'data' => :'data'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'current_page' => :'Integer',
        :'first_page_url' => :'String',
        :'from' => :'Integer',
        :'last_page' => :'Integer',
        :'last_page_url' => :'String',
        :'next_page_url' => :'String',
        :'path' => :'String',
        :'per_page' => :'Integer',
        :'prev_page_url' => :'String',
        :'to' => :'Integer',
        :'total' => :'Integer',
        :'data' => :'Array<IssuedDocument>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'from',
        :'next_page_url',
        :'prev_page_url',
        :'to',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ListIssuedDocumentsResponsePage',
      :'Pagination'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud::Ruby::Sdk::ListIssuedDocumentsResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud::Ruby::Sdk::ListIssuedDocumentsResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'current_page')
        self.current_page = attributes[:'current_page']
      end

      if attributes.key?(:'first_page_url')
        self.first_page_url = attributes[:'first_page_url']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'last_page')
        self.last_page = attributes[:'last_page']
      end

      if attributes.key?(:'last_page_url')
        self.last_page_url = attributes[:'last_page_url']
      end

      if attributes.key?(:'next_page_url')
        self.next_page_url = attributes[:'next_page_url']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'per_page')
        self.per_page = attributes[:'per_page']
      end

      if attributes.key?(:'prev_page_url')
        self.prev_page_url = attributes[:'prev_page_url']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'data')
        if (value = attributes[:'data']).is_a?(Array)
          self.data = value
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
          current_page == o.current_page &&
          first_page_url == o.first_page_url &&
          from == o.from &&
          last_page == o.last_page &&
          last_page_url == o.last_page_url &&
          next_page_url == o.next_page_url &&
          path == o.path &&
          per_page == o.per_page &&
          prev_page_url == o.prev_page_url &&
          to == o.to &&
          total == o.total &&
          data == o.data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [current_page, first_page_url, from, last_page, last_page_url, next_page_url, path, per_page, prev_page_url, to, total, data].hash
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
      else # model
        # models (e.g. Pet) or oneOf
        klass = FattureInCloud::Ruby::Sdk.const_get(type)
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
