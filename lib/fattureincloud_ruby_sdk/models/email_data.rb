=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.12
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  # 
  class EmailData
    # Recipient's email
    attr_accessor :recipient_email

    attr_accessor :default_sender_email

    # List of all emails from which the document can be sent
    attr_accessor :sender_emails_list

    # By default is the logged company email. This is the email address to which a copy will be sent.
    attr_accessor :cc_email

    # Email subject
    attr_accessor :subject

    # Email body
    attr_accessor :body

    # If the document is not a delivery note, this flag will be set to true
    attr_accessor :document_exists

    # If the document is a delivery note, this flag will be set to true
    attr_accessor :delivery_note_exists

    # If the document has one or more attachments, this flag will be set to true
    attr_accessor :attachment_exists

    # If an accompanying invoice exists, this flag will be set to true
    attr_accessor :accompanying_invoice_exists

    # If a pdf is attached, this flag will be set to true
    attr_accessor :default_attach_pdf

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'recipient_email' => :'recipient_email',
        :'default_sender_email' => :'default_sender_email',
        :'sender_emails_list' => :'sender_emails_list',
        :'cc_email' => :'cc_email',
        :'subject' => :'subject',
        :'body' => :'body',
        :'document_exists' => :'document_exists',
        :'delivery_note_exists' => :'delivery_note_exists',
        :'attachment_exists' => :'attachment_exists',
        :'accompanying_invoice_exists' => :'accompanying_invoice_exists',
        :'default_attach_pdf' => :'default_attach_pdf'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'recipient_email' => :'String',
        :'default_sender_email' => :'EmailDataDefaultSenderEmail',
        :'sender_emails_list' => :'Array<SenderEmail>',
        :'cc_email' => :'String',
        :'subject' => :'String',
        :'body' => :'String',
        :'document_exists' => :'Boolean',
        :'delivery_note_exists' => :'Boolean',
        :'attachment_exists' => :'Boolean',
        :'accompanying_invoice_exists' => :'Boolean',
        :'default_attach_pdf' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'recipient_email',
        :'default_sender_email',
        :'sender_emails_list',
        :'cc_email',
        :'subject',
        :'body',
        :'document_exists',
        :'delivery_note_exists',
        :'attachment_exists',
        :'accompanying_invoice_exists',
        :'default_attach_pdf'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::EmailData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::EmailData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'recipient_email')
        self.recipient_email = attributes[:'recipient_email']
      end

      if attributes.key?(:'default_sender_email')
        self.default_sender_email = attributes[:'default_sender_email']
      end

      if attributes.key?(:'sender_emails_list')
        if (value = attributes[:'sender_emails_list']).is_a?(Array)
          self.sender_emails_list = value
        end
      end

      if attributes.key?(:'cc_email')
        self.cc_email = attributes[:'cc_email']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'document_exists')
        self.document_exists = attributes[:'document_exists']
      end

      if attributes.key?(:'delivery_note_exists')
        self.delivery_note_exists = attributes[:'delivery_note_exists']
      end

      if attributes.key?(:'attachment_exists')
        self.attachment_exists = attributes[:'attachment_exists']
      end

      if attributes.key?(:'accompanying_invoice_exists')
        self.accompanying_invoice_exists = attributes[:'accompanying_invoice_exists']
      end

      if attributes.key?(:'default_attach_pdf')
        self.default_attach_pdf = attributes[:'default_attach_pdf']
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
          recipient_email == o.recipient_email &&
          default_sender_email == o.default_sender_email &&
          sender_emails_list == o.sender_emails_list &&
          cc_email == o.cc_email &&
          subject == o.subject &&
          body == o.body &&
          document_exists == o.document_exists &&
          delivery_note_exists == o.delivery_note_exists &&
          attachment_exists == o.attachment_exists &&
          accompanying_invoice_exists == o.accompanying_invoice_exists &&
          default_attach_pdf == o.default_attach_pdf
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [recipient_email, default_sender_email, sender_emails_list, cc_email, subject, body, document_exists, delivery_note_exists, attachment_exists, accompanying_invoice_exists, default_attach_pdf].hash
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
