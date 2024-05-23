=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.33
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class ReceivedDocument
    # Received document id
    attr_accessor :id

    attr_accessor :type

    attr_accessor :entity

    # Received document date [defaults to today's date]
    attr_accessor :date

    # Received document category
    attr_accessor :category

    # Received document description
    attr_accessor :description

    # Received document total net amount
    attr_accessor :amount_net

    # Received document total vat amount
    attr_accessor :amount_vat

    # Received document withholding tax amount
    attr_accessor :amount_withholding_tax

    # Received document other withholding tax amount
    attr_accessor :amount_other_withholding_tax

    # [Read Only] Received document total gross amount
    attr_accessor :amount_gross

    # Received document amortization value
    attr_accessor :amortization

    # Received document revenue center
    attr_accessor :rc_center

    # Received document invoice number
    attr_accessor :invoice_number

    # Received document is marked
    attr_accessor :is_marked

    # Received document has items
    attr_accessor :is_detailed

    # [Read Only] Received document is an e-invoice
    attr_accessor :e_invoice

    # [Read Only] Received document date of the next not paid payment
    attr_accessor :next_due_date

    attr_accessor :currency

    # Received document tax deducibility percentage
    attr_accessor :tax_deductibility

    # Received document vat deducibility percentage
    attr_accessor :vat_deductibility

    attr_accessor :items_list

    attr_accessor :payments_list

    # [Temporary] [Read Only] Received document url of the attached file
    attr_accessor :attachment_url

    # [Temporary] [Read Only] Received document url of the attachment preview
    attr_accessor :attachment_preview_url

    # Received document total items amount and total payments amount can differ if this field is set to false
    attr_accessor :auto_calculate

    # [Write Only] Received document attachment token returned by POST /received_documents/attachment
    attr_accessor :attachment_token

    # Received Document can't be edited
    attr_accessor :locked

    # Received document creation date
    attr_accessor :created_at

    # Received document last update date
    attr_accessor :updated_at

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
        :'auto_calculate' => :'auto_calculate',
        :'attachment_token' => :'attachment_token',
        :'locked' => :'locked',
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
        :'entity' => :'Entity',
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
        :'auto_calculate' => :'Boolean',
        :'attachment_token' => :'String',
        :'locked' => :'Boolean',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
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
        :'auto_calculate',
        :'attachment_token',
        :'locked',
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

      if attributes.key?(:'auto_calculate')
        self.auto_calculate = attributes[:'auto_calculate']
      end

      if attributes.key?(:'attachment_token')
        self.attachment_token = attributes[:'attachment_token']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
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
          auto_calculate == o.auto_calculate &&
          attachment_token == o.attachment_token &&
          locked == o.locked &&
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
      [id, type, entity, date, category, description, amount_net, amount_vat, amount_withholding_tax, amount_other_withholding_tax, amount_gross, amortization, rc_center, invoice_number, is_marked, is_detailed, e_invoice, next_due_date, currency, tax_deductibility, vat_deductibility, items_list, payments_list, attachment_url, attachment_preview_url, auto_calculate, attachment_token, locked, created_at, updated_at].hash
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
