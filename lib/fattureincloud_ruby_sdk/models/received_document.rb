=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.22
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class ReceivedDocument
    # Unique identifier of the document.
    attr_accessor :id

    attr_accessor :type

    attr_accessor :entity

    # Date of the document [If not specified, today date is used].
    attr_accessor :date

    # Document category.
    attr_accessor :category

    # Document description.
    attr_accessor :description

    # Total net amount.
    attr_accessor :amount_net

    # Total vat amount.
    attr_accessor :amount_vat

    # Withholding tax amount.
    attr_accessor :amount_withholding_tax

    # Other withholding tax amount.
    attr_accessor :amount_other_withholding_tax

    # [Read Only] Total gross amount.
    attr_accessor :amount_gross

    # Amortization value
    attr_accessor :amortization

    # Revenue center.
    attr_accessor :rc_center

    # Invoice number
    attr_accessor :invoice_number

    attr_accessor :is_marked

    attr_accessor :is_detailed

    # [Read Only] Indicates if this is an e-invoice.
    attr_accessor :e_invoice

    # [Read Only] Next due date.
    attr_accessor :next_due_date

    attr_accessor :currency

    # Tax deducibility percentage.
    attr_accessor :tax_deductibility

    # Vat deducibility percentage.
    attr_accessor :vat_deductibility

    attr_accessor :items_list

    attr_accessor :payments_list

    # [Read Only] Attachment url.
    attr_accessor :attachment_url

    # [Read Only] Attachment preview url.
    attr_accessor :attachment_preview_url

    # Uploaded attachement token.
    attr_accessor :attachment_token

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'entity' => :'entity',
        :'date' => :'date',
        :'category' => :'category',
        :'description' => :'description',
        :'amount_net' => :'amount_net',
        :'amount_vat' => :'amount_vat',
        :'amount_withholding_tax' => :'amount_withholding_tax',
        :'amount_other_withholding_tax' => :'amount_other_withholding_tax',
        :'amount_gross' => :'amount_gross',
        :'amortization' => :'amortization',
        :'rc_center' => :'rc_center',
        :'invoice_number' => :'invoice_number',
        :'is_marked' => :'is_marked',
        :'is_detailed' => :'is_detailed',
        :'e_invoice' => :'e_invoice',
        :'next_due_date' => :'next_due_date',
        :'currency' => :'currency',
        :'tax_deductibility' => :'tax_deductibility',
        :'vat_deductibility' => :'vat_deductibility',
        :'items_list' => :'items_list',
        :'payments_list' => :'payments_list',
        :'attachment_url' => :'attachment_url',
        :'attachment_preview_url' => :'attachment_preview_url',
        :'attachment_token' => :'attachment_token',
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
        :'type' => :'ReceivedDocumentType',
        :'entity' => :'ReceivedDocumentEntity',
        :'date' => :'Date',
        :'category' => :'String',
        :'description' => :'String',
        :'amount_net' => :'Float',
        :'amount_vat' => :'Float',
        :'amount_withholding_tax' => :'Float',
        :'amount_other_withholding_tax' => :'Float',
        :'amount_gross' => :'Float',
        :'amortization' => :'Float',
        :'rc_center' => :'String',
        :'invoice_number' => :'String',
        :'is_marked' => :'Boolean',
        :'is_detailed' => :'Boolean',
        :'e_invoice' => :'Boolean',
        :'next_due_date' => :'Date',
        :'currency' => :'Currency',
        :'tax_deductibility' => :'Float',
        :'vat_deductibility' => :'Float',
        :'items_list' => :'Array<ReceivedDocumentItemsListItem>',
        :'payments_list' => :'Array<ReceivedDocumentPaymentsListItem>',
        :'attachment_url' => :'String',
        :'attachment_preview_url' => :'String',
        :'attachment_token' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'entity',
        :'date',
        :'category',
        :'description',
        :'amount_net',
        :'amount_vat',
        :'amount_withholding_tax',
        :'amount_other_withholding_tax',
        :'amount_gross',
        :'amortization',
        :'rc_center',
        :'invoice_number',
        :'is_marked',
        :'is_detailed',
        :'e_invoice',
        :'next_due_date',
        :'tax_deductibility',
        :'vat_deductibility',
        :'items_list',
        :'payments_list',
        :'attachment_url',
        :'attachment_preview_url',
        :'attachment_token',
        :'created_at',
        :'updated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::ReceivedDocument` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::ReceivedDocument`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'expense'
      end

      if attributes.key?(:'entity')
        self.entity = attributes[:'entity']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'amount_net')
        self.amount_net = attributes[:'amount_net']
      end

      if attributes.key?(:'amount_vat')
        self.amount_vat = attributes[:'amount_vat']
      end

      if attributes.key?(:'amount_withholding_tax')
        self.amount_withholding_tax = attributes[:'amount_withholding_tax']
      end

      if attributes.key?(:'amount_other_withholding_tax')
        self.amount_other_withholding_tax = attributes[:'amount_other_withholding_tax']
      end

      if attributes.key?(:'amount_gross')
        self.amount_gross = attributes[:'amount_gross']
      end

      if attributes.key?(:'amortization')
        self.amortization = attributes[:'amortization']
      end

      if attributes.key?(:'rc_center')
        self.rc_center = attributes[:'rc_center']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'is_marked')
        self.is_marked = attributes[:'is_marked']
      end

      if attributes.key?(:'is_detailed')
        self.is_detailed = attributes[:'is_detailed']
      end

      if attributes.key?(:'e_invoice')
        self.e_invoice = attributes[:'e_invoice']
      end

      if attributes.key?(:'next_due_date')
        self.next_due_date = attributes[:'next_due_date']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'tax_deductibility')
        self.tax_deductibility = attributes[:'tax_deductibility']
      end

      if attributes.key?(:'vat_deductibility')
        self.vat_deductibility = attributes[:'vat_deductibility']
      end

      if attributes.key?(:'items_list')
        if (value = attributes[:'items_list']).is_a?(Array)
          self.items_list = value
        end
      end

      if attributes.key?(:'payments_list')
        if (value = attributes[:'payments_list']).is_a?(Array)
          self.payments_list = value
        end
      end

      if attributes.key?(:'attachment_url')
        self.attachment_url = attributes[:'attachment_url']
      end

      if attributes.key?(:'attachment_preview_url')
        self.attachment_preview_url = attributes[:'attachment_preview_url']
      end

      if attributes.key?(:'attachment_token')
        self.attachment_token = attributes[:'attachment_token']
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
          type == o.type &&
          entity == o.entity &&
          date == o.date &&
          category == o.category &&
          description == o.description &&
          amount_net == o.amount_net &&
          amount_vat == o.amount_vat &&
          amount_withholding_tax == o.amount_withholding_tax &&
          amount_other_withholding_tax == o.amount_other_withholding_tax &&
          amount_gross == o.amount_gross &&
          amortization == o.amortization &&
          rc_center == o.rc_center &&
          invoice_number == o.invoice_number &&
          is_marked == o.is_marked &&
          is_detailed == o.is_detailed &&
          e_invoice == o.e_invoice &&
          next_due_date == o.next_due_date &&
          currency == o.currency &&
          tax_deductibility == o.tax_deductibility &&
          vat_deductibility == o.vat_deductibility &&
          items_list == o.items_list &&
          payments_list == o.payments_list &&
          attachment_url == o.attachment_url &&
          attachment_preview_url == o.attachment_preview_url &&
          attachment_token == o.attachment_token &&
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
      [id, type, entity, date, category, description, amount_net, amount_vat, amount_withholding_tax, amount_other_withholding_tax, amount_gross, amortization, rc_center, invoice_number, is_marked, is_detailed, e_invoice, next_due_date, currency, tax_deductibility, vat_deductibility, items_list, payments_list, attachment_url, attachment_preview_url, attachment_token, created_at, updated_at].hash
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
