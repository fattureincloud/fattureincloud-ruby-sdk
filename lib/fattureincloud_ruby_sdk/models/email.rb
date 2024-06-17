=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.1.0
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class Email
    # Email id
    attr_accessor :id

    attr_accessor :status

    # Email sent date
    attr_accessor :sent_date

    # Email errors count
    attr_accessor :errors_count

    # Email errors log
    attr_accessor :error_log

    # Email sender email
    attr_accessor :from_email

    # Email sender name
    attr_accessor :from_name

    # Email recipient email
    attr_accessor :to_email

    # Email receipient name
    attr_accessor :to_name

    # Email subject
    attr_accessor :subject

    # Email content
    attr_accessor :content

    # Email cc
    attr_accessor :copy_to

    attr_accessor :recipient_status

    # Email recipient date
    attr_accessor :recipient_date

    # Email kind
    attr_accessor :kind

    # Email attachments
    attr_accessor :attachments

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
        :'status' => :'status',
        :'sent_date' => :'sent_date',
        :'errors_count' => :'errors_count',
        :'error_log' => :'error_log',
        :'from_email' => :'from_email',
        :'from_name' => :'from_name',
        :'to_email' => :'to_email',
        :'to_name' => :'to_name',
        :'subject' => :'subject',
        :'content' => :'content',
        :'copy_to' => :'copy_to',
        :'recipient_status' => :'recipient_status',
        :'recipient_date' => :'recipient_date',
        :'kind' => :'kind',
        :'attachments' => :'attachments'
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
        :'status' => :'EmailStatus',
        :'sent_date' => :'Time',
        :'errors_count' => :'Integer',
        :'error_log' => :'String',
        :'from_email' => :'String',
        :'from_name' => :'String',
        :'to_email' => :'String',
        :'to_name' => :'String',
        :'subject' => :'String',
        :'content' => :'String',
        :'copy_to' => :'String',
        :'recipient_status' => :'EmailRecipientStatus',
        :'recipient_date' => :'Time',
        :'kind' => :'String',
        :'attachments' => :'Array<EmailAttachment>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'sent_date',
        :'errors_count',
        :'error_log',
        :'from_email',
        :'from_name',
        :'to_email',
        :'to_name',
        :'subject',
        :'content',
        :'copy_to',
        :'recipient_date',
        :'kind',
        :'attachments'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::Email` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::Email`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'sent_date')
        self.sent_date = attributes[:'sent_date']
      end

      if attributes.key?(:'errors_count')
        self.errors_count = attributes[:'errors_count']
      end

      if attributes.key?(:'error_log')
        self.error_log = attributes[:'error_log']
      end

      if attributes.key?(:'from_email')
        self.from_email = attributes[:'from_email']
      end

      if attributes.key?(:'from_name')
        self.from_name = attributes[:'from_name']
      end

      if attributes.key?(:'to_email')
        self.to_email = attributes[:'to_email']
      end

      if attributes.key?(:'to_name')
        self.to_name = attributes[:'to_name']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'copy_to')
        self.copy_to = attributes[:'copy_to']
      end

      if attributes.key?(:'recipient_status')
        self.recipient_status = attributes[:'recipient_status']
      end

      if attributes.key?(:'recipient_date')
        self.recipient_date = attributes[:'recipient_date']
      end

      if attributes.key?(:'kind')
        self.kind = attributes[:'kind']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
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
          id == o.id &&
          status == o.status &&
          sent_date == o.sent_date &&
          errors_count == o.errors_count &&
          error_log == o.error_log &&
          from_email == o.from_email &&
          from_name == o.from_name &&
          to_email == o.to_email &&
          to_name == o.to_name &&
          subject == o.subject &&
          content == o.content &&
          copy_to == o.copy_to &&
          recipient_status == o.recipient_status &&
          recipient_date == o.recipient_date &&
          kind == o.kind &&
          attachments == o.attachments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, status, sent_date, errors_count, error_log, from_email, from_name, to_email, to_name, subject, content, copy_to, recipient_status, recipient_date, kind, attachments].hash
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
