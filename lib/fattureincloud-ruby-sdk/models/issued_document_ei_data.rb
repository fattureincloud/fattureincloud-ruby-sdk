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

module FattureInCloudSdk
  # E-invoice data. [Only if e_invoice=true]
  class IssuedDocumentEiData
    attr_accessor :vat_kind

    attr_accessor :original_document_type

    # Original document number.
    attr_accessor :od_number

    # Original document date.
    attr_accessor :od_date

    # CIG.
    attr_accessor :cig

    # CUP.
    attr_accessor :cup

    # Payment method (see https://www.fatturapa.gov.it/export/documenti/fatturapa/v1.2.1/Rappresentazione-tabellare-fattura-ordinaria.pdf for the accepted values of ModalitaPagamento).
    attr_accessor :payment_method

    # Bank name.
    attr_accessor :bank_name

    # IBAN.
    attr_accessor :bank_iban

    # Bank beneficiary.
    attr_accessor :bank_beneficiary

    # Invoice number.
    attr_accessor :invoice_number

    # Invoice date.
    attr_accessor :invoice_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'vat_kind' => :'vat_kind',
        :'original_document_type' => :'original_document_type',
        :'od_number' => :'od_number',
        :'od_date' => :'od_date',
        :'cig' => :'cig',
        :'cup' => :'cup',
        :'payment_method' => :'payment_method',
        :'bank_name' => :'bank_name',
        :'bank_iban' => :'bank_iban',
        :'bank_beneficiary' => :'bank_beneficiary',
        :'invoice_number' => :'invoice_number',
        :'invoice_date' => :'invoice_date'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'vat_kind' => :'VatKind',
        :'original_document_type' => :'OriginalDocumentType',
        :'od_number' => :'String',
        :'od_date' => :'Date',
        :'cig' => :'String',
        :'cup' => :'String',
        :'payment_method' => :'String',
        :'bank_name' => :'String',
        :'bank_iban' => :'String',
        :'bank_beneficiary' => :'String',
        :'invoice_number' => :'String',
        :'invoice_date' => :'Date'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'vat_kind',
        :'original_document_type',
        :'od_number',
        :'od_date',
        :'cig',
        :'cup',
        :'payment_method',
        :'bank_name',
        :'bank_iban',
        :'bank_beneficiary',
        :'invoice_number',
        :'invoice_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloudSdk::IssuedDocumentEiData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloudSdk::IssuedDocumentEiData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'vat_kind')
        self.vat_kind = attributes[:'vat_kind']
      end

      if attributes.key?(:'original_document_type')
        self.original_document_type = attributes[:'original_document_type']
      else
        self.original_document_type = 'ordine'
      end

      if attributes.key?(:'od_number')
        self.od_number = attributes[:'od_number']
      end

      if attributes.key?(:'od_date')
        self.od_date = attributes[:'od_date']
      end

      if attributes.key?(:'cig')
        self.cig = attributes[:'cig']
      end

      if attributes.key?(:'cup')
        self.cup = attributes[:'cup']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'bank_iban')
        self.bank_iban = attributes[:'bank_iban']
      end

      if attributes.key?(:'bank_beneficiary')
        self.bank_beneficiary = attributes[:'bank_beneficiary']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
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
          vat_kind == o.vat_kind &&
          original_document_type == o.original_document_type &&
          od_number == o.od_number &&
          od_date == o.od_date &&
          cig == o.cig &&
          cup == o.cup &&
          payment_method == o.payment_method &&
          bank_name == o.bank_name &&
          bank_iban == o.bank_iban &&
          bank_beneficiary == o.bank_beneficiary &&
          invoice_number == o.invoice_number &&
          invoice_date == o.invoice_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [vat_kind, original_document_type, od_number, od_date, cig, cup, payment_method, bank_name, bank_iban, bank_beneficiary, invoice_number, invoice_date].hash
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
        klass = FattureInCloudSdk.const_get(type)
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
