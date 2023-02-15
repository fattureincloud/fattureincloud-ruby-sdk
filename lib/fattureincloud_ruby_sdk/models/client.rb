=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.26
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  # 
  class Client
    # Unique identifier
    attr_accessor :id

    # Client code.
    attr_accessor :code

    # Client name
    attr_accessor :name

    attr_accessor :type

    # Client first name.
    attr_accessor :first_name

    # Client last name.
    attr_accessor :last_name

    attr_accessor :contact_person

    # Client vat number
    attr_accessor :vat_number

    # Client tax code.
    attr_accessor :tax_code

    # Client street address.
    attr_accessor :address_street

    # Client postal code.
    attr_accessor :address_postal_code

    # Client city.
    attr_accessor :address_city

    # Client province.
    attr_accessor :address_province

    # Client address extra info.
    attr_accessor :address_extra

    # Client country
    attr_accessor :country

    # Client email.
    attr_accessor :email

    # Client certified email.
    attr_accessor :certified_email

    # Client phone.
    attr_accessor :phone

    # Client fax.
    attr_accessor :fax

    # Extra notes.
    attr_accessor :notes

    attr_accessor :default_vat

    attr_accessor :default_payment_terms

    attr_accessor :default_payment_terms_type

    attr_accessor :default_payment_method

    # Client bank name.
    attr_accessor :bank_name

    # Client iban.
    attr_accessor :bank_iban

    # Client bank swift code.
    attr_accessor :bank_swift_code

    # Client shipping address.
    attr_accessor :shipping_address

    # Use e-invoices for this entity
    attr_accessor :e_invoice

    # E-invoice code
    attr_accessor :ei_code

    # Discount Highlight.
    attr_accessor :discount_highlight

    # Default discount.
    attr_accessor :default_discount

    # Has intent declaration.
    attr_accessor :has_intent_declaration

    # Intent declaration protocol number.
    attr_accessor :intent_declaration_protocol_number

    # Intent declaration protocol date.
    attr_accessor :intent_declaration_protocol_date

    attr_accessor :created_at

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
        :'code' => :'code',
        :'name' => :'name',
        :'type' => :'type',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'contact_person' => :'contact_person',
        :'vat_number' => :'vat_number',
        :'tax_code' => :'tax_code',
        :'address_street' => :'address_street',
        :'address_postal_code' => :'address_postal_code',
        :'address_city' => :'address_city',
        :'address_province' => :'address_province',
        :'address_extra' => :'address_extra',
        :'country' => :'country',
        :'email' => :'email',
        :'certified_email' => :'certified_email',
        :'phone' => :'phone',
        :'fax' => :'fax',
        :'notes' => :'notes',
        :'default_vat' => :'default_vat',
        :'default_payment_terms' => :'default_payment_terms',
        :'default_payment_terms_type' => :'default_payment_terms_type',
        :'default_payment_method' => :'default_payment_method',
        :'bank_name' => :'bank_name',
        :'bank_iban' => :'bank_iban',
        :'bank_swift_code' => :'bank_swift_code',
        :'shipping_address' => :'shipping_address',
        :'e_invoice' => :'e_invoice',
        :'ei_code' => :'ei_code',
        :'discount_highlight' => :'discount_highlight',
        :'default_discount' => :'default_discount',
        :'has_intent_declaration' => :'has_intent_declaration',
        :'intent_declaration_protocol_number' => :'intent_declaration_protocol_number',
        :'intent_declaration_protocol_date' => :'intent_declaration_protocol_date',
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
        :'code' => :'String',
        :'name' => :'String',
        :'type' => :'ClientType',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'contact_person' => :'String',
        :'vat_number' => :'String',
        :'tax_code' => :'String',
        :'address_street' => :'String',
        :'address_postal_code' => :'String',
        :'address_city' => :'String',
        :'address_province' => :'String',
        :'address_extra' => :'String',
        :'country' => :'String',
        :'email' => :'String',
        :'certified_email' => :'String',
        :'phone' => :'String',
        :'fax' => :'String',
        :'notes' => :'String',
        :'default_vat' => :'VatType',
        :'default_payment_terms' => :'Integer',
        :'default_payment_terms_type' => :'PaymentTermsType',
        :'default_payment_method' => :'PaymentMethod',
        :'bank_name' => :'String',
        :'bank_iban' => :'String',
        :'bank_swift_code' => :'String',
        :'shipping_address' => :'String',
        :'e_invoice' => :'Boolean',
        :'ei_code' => :'String',
        :'discount_highlight' => :'Boolean',
        :'default_discount' => :'Float',
        :'has_intent_declaration' => :'Boolean',
        :'intent_declaration_protocol_number' => :'String',
        :'intent_declaration_protocol_date' => :'Date',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'code',
        :'name',
        :'type',
        :'first_name',
        :'last_name',
        :'contact_person',
        :'vat_number',
        :'tax_code',
        :'address_street',
        :'address_postal_code',
        :'address_city',
        :'address_province',
        :'address_extra',
        :'country',
        :'email',
        :'certified_email',
        :'phone',
        :'fax',
        :'notes',
        :'default_vat',
        :'default_payment_terms',
        :'bank_name',
        :'bank_iban',
        :'bank_swift_code',
        :'shipping_address',
        :'e_invoice',
        :'ei_code',
        :'discount_highlight',
        :'default_discount',
        :'has_intent_declaration',
        :'intent_declaration_protocol_number',
        :'intent_declaration_protocol_date',
        :'created_at',
        :'updated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::Client` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::Client`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'contact_person')
        self.contact_person = attributes[:'contact_person']
      end

      if attributes.key?(:'vat_number')
        self.vat_number = attributes[:'vat_number']
      end

      if attributes.key?(:'tax_code')
        self.tax_code = attributes[:'tax_code']
      end

      if attributes.key?(:'address_street')
        self.address_street = attributes[:'address_street']
      end

      if attributes.key?(:'address_postal_code')
        self.address_postal_code = attributes[:'address_postal_code']
      end

      if attributes.key?(:'address_city')
        self.address_city = attributes[:'address_city']
      end

      if attributes.key?(:'address_province')
        self.address_province = attributes[:'address_province']
      end

      if attributes.key?(:'address_extra')
        self.address_extra = attributes[:'address_extra']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'certified_email')
        self.certified_email = attributes[:'certified_email']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'default_vat')
        self.default_vat = attributes[:'default_vat']
      end

      if attributes.key?(:'default_payment_terms')
        self.default_payment_terms = attributes[:'default_payment_terms']
      end

      if attributes.key?(:'default_payment_terms_type')
        self.default_payment_terms_type = attributes[:'default_payment_terms_type']
      else
        self.default_payment_terms_type = 'standard'
      end

      if attributes.key?(:'default_payment_method')
        self.default_payment_method = attributes[:'default_payment_method']
      end

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'bank_iban')
        self.bank_iban = attributes[:'bank_iban']
      end

      if attributes.key?(:'bank_swift_code')
        self.bank_swift_code = attributes[:'bank_swift_code']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'e_invoice')
        self.e_invoice = attributes[:'e_invoice']
      end

      if attributes.key?(:'ei_code')
        self.ei_code = attributes[:'ei_code']
      end

      if attributes.key?(:'discount_highlight')
        self.discount_highlight = attributes[:'discount_highlight']
      end

      if attributes.key?(:'default_discount')
        self.default_discount = attributes[:'default_discount']
      end

      if attributes.key?(:'has_intent_declaration')
        self.has_intent_declaration = attributes[:'has_intent_declaration']
      end

      if attributes.key?(:'intent_declaration_protocol_number')
        self.intent_declaration_protocol_number = attributes[:'intent_declaration_protocol_number']
      end

      if attributes.key?(:'intent_declaration_protocol_date')
        self.intent_declaration_protocol_date = attributes[:'intent_declaration_protocol_date']
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
          code == o.code &&
          name == o.name &&
          type == o.type &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          contact_person == o.contact_person &&
          vat_number == o.vat_number &&
          tax_code == o.tax_code &&
          address_street == o.address_street &&
          address_postal_code == o.address_postal_code &&
          address_city == o.address_city &&
          address_province == o.address_province &&
          address_extra == o.address_extra &&
          country == o.country &&
          email == o.email &&
          certified_email == o.certified_email &&
          phone == o.phone &&
          fax == o.fax &&
          notes == o.notes &&
          default_vat == o.default_vat &&
          default_payment_terms == o.default_payment_terms &&
          default_payment_terms_type == o.default_payment_terms_type &&
          default_payment_method == o.default_payment_method &&
          bank_name == o.bank_name &&
          bank_iban == o.bank_iban &&
          bank_swift_code == o.bank_swift_code &&
          shipping_address == o.shipping_address &&
          e_invoice == o.e_invoice &&
          ei_code == o.ei_code &&
          discount_highlight == o.discount_highlight &&
          default_discount == o.default_discount &&
          has_intent_declaration == o.has_intent_declaration &&
          intent_declaration_protocol_number == o.intent_declaration_protocol_number &&
          intent_declaration_protocol_date == o.intent_declaration_protocol_date &&
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
      [id, code, name, type, first_name, last_name, contact_person, vat_number, tax_code, address_street, address_postal_code, address_city, address_province, address_extra, country, email, certified_email, phone, fax, notes, default_vat, default_payment_terms, default_payment_terms_type, default_payment_method, bank_name, bank_iban, bank_swift_code, shipping_address, e_invoice, ei_code, discount_highlight, default_discount, has_intent_declaration, intent_declaration_protocol_number, intent_declaration_protocol_date, created_at, updated_at].hash
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
