=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.16
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  # 
  class IssuedDocument
    # Unique identifier of the document.
    attr_accessor :id

    attr_accessor :entity

    attr_accessor :type

    # Number of the document [If not specified, next number is used]
    attr_accessor :number

    # Numeration of the document [Not available if type=delivery_note]
    attr_accessor :numeration

    # Date of the document [If not specified, today date is used]
    attr_accessor :date

    # Invoice year.
    attr_accessor :year

    attr_accessor :currency

    attr_accessor :language

    # Issued document subject.
    attr_accessor :subject

    # Issued document visible subject.
    attr_accessor :visible_subject

    # Revenue center [or cost center if type=supplier_order].
    attr_accessor :rc_center

    # Issued document extra notes.
    attr_accessor :notes

    # \"Rivalsa INPS\" percentual value
    attr_accessor :rivalsa

    # \"Cassa previdenziale\" percentual value
    attr_accessor :cassa

    # [Read Only] Cassa amount.
    attr_accessor :amount_cassa

    # Cassa taxable percentage
    attr_accessor :cassa_taxable

    # [Can be set only if cassa_taxable is NULL] Cassa2 taxable amount
    attr_accessor :amount_cassa_taxable

    # \"Cassa previdenziale 2\" percentual value
    attr_accessor :cassa2

    # [Read Only] Cassa amount.
    attr_accessor :amount_cassa2

    # Cassa2 taxable percentage
    attr_accessor :cassa2_taxable

    # [Can be set only if cassa2_taxable is NULL] Cassa2 taxable amount
    attr_accessor :amount_cassa2_taxable

    # Global cassa taxable percentage
    attr_accessor :global_cassa_taxable

    # [Can be set only if global_cassa_taxable is NULL] Global cassa taxable amount
    attr_accessor :amount_global_cassa_taxable

    # Withholding tax (ritenuta d'acconto) percentual value
    attr_accessor :withholding_tax

    # Withholding tax taxable (imponibile) percentual value
    attr_accessor :withholding_tax_taxable

    # Other withholding tax (altra ritenuta) percentual value
    attr_accessor :other_withholding_tax

    # Stamp duty value [0 if not present]
    attr_accessor :stamp_duty

    attr_accessor :payment_method

    # Use split payment
    attr_accessor :use_split_payment

    # Use gross prices
    attr_accessor :use_gross_prices

    # Indicates if this is an e-invoice.
    attr_accessor :e_invoice

    attr_accessor :ei_data

    # E-invoice cassa type
    attr_accessor :ei_cassa_type

    # E-invoice cassa2 type
    attr_accessor :ei_cassa2_type

    # E-invoice withholding tax causal
    attr_accessor :ei_withholding_tax_causal

    # E-invoice other withholding tax type
    attr_accessor :ei_other_withholding_tax_type

    # E-invoice other withholding tax causal
    attr_accessor :ei_other_withholding_tax_causal

    attr_accessor :items_list

    attr_accessor :payments_list

    attr_accessor :template

    attr_accessor :delivery_note_template

    attr_accessor :acc_inv_template

    # Horizontal margins.
    attr_accessor :h_margins

    # Vertical margins.
    attr_accessor :v_margins

    # Shows the expiration dates of the payments on the document.
    attr_accessor :show_payments

    # Show the payment method details on the document.
    attr_accessor :show_payment_method

    attr_accessor :show_totals

    # Show paypal button
    attr_accessor :show_paypal_button

    # Show notification button
    attr_accessor :show_notification_button

    # Show ts pay button.
    attr_accessor :show_tspay_button

    attr_accessor :delivery_note

    # Attach an accompanying invoice.
    attr_accessor :accompanying_invoice

    # Number (for the attached delivery note).
    attr_accessor :dn_number

    # Date (for the attached delivery note).
    attr_accessor :dn_date

    # Number of packages (for the attached delivery note).
    attr_accessor :dn_ai_packages_number

    # Weight (for the attached delivery note).
    attr_accessor :dn_ai_weight

    # Causal (for the attached delivery note).
    attr_accessor :dn_ai_causal

    # Destination (for the attached delivery note).
    attr_accessor :dn_ai_destination

    # Transporter (for the attached delivery note).
    attr_accessor :dn_ai_transporter

    # Notes (for the attached delivery note).
    attr_accessor :dn_ai_notes

    # This is true if the document is marked.
    attr_accessor :is_marked

    # [Read Only] Total net amount (competenze).
    attr_accessor :amount_net

    # [Read Only] Total vat amount (IVA).
    attr_accessor :amount_vat

    # [Read Only] Total gross amount (totale documento).
    attr_accessor :amount_gross

    # Amount due discount
    attr_accessor :amount_due_discount

    # [Read Only] Rivalsa amount.
    attr_accessor :amount_rivalsa

    # Taxable rivalsa amount
    attr_accessor :amount_rivalsa_taxable

    # [Read Only] Withholding tax amount (ritenuta d'acconto).
    attr_accessor :amount_withholding_tax

    # Taxable withholding tax amount
    attr_accessor :amount_withholding_tax_taxable

    # [Read Only] Other withholding tax amount (altra ritenuta).
    attr_accessor :amount_other_withholding_tax

    # Taxable other withholding tax amount
    attr_accessor :amount_other_withholding_tax_taxable

    # Taxable enasarco amount
    attr_accessor :amount_enasarco_taxable

    attr_accessor :extra_data

    # Date when the client/supplier has seen the document.
    attr_accessor :seen_date

    # Date of the next not paid payment.
    attr_accessor :next_due_date

    # Public url of the document PDF file.
    attr_accessor :url

    # [Read Only] Public url of the attached file. Authomatically set if a valid attachment token is passed via POST /issued_documents or PUT /issued_documents/{documentId}.
    attr_accessor :attachment_url

    # [Write Only] Attachment token returned by POST /issued_documents/attachment. Used to attach the file already uploaded.
    attr_accessor :attachment_token

    # Advanced raw attributes for e-invoices.
    attr_accessor :ei_raw

    # [Read only] Status of the e-invoice.   * `attempt` - We are trying to send the invoice, please wait up to 2 hours   * `missing` - The invoice is missing   * `not_sent` - The invoice has yet to be sent   * `sent` - The invoice was sent   * `pending` - The checks for the digital signature and sending are in progress   * `processing` - The SDI is delivering the invoice to the customer   * `error` - An error occurred while handling the invoice, please try to resend it or contact support   * `discarded` - The invoice has been rejected by the SDI, so it must be corrected and re-sent   * `not_delivered` - The SDI was unable to deliver the invoice   * `accepted` - The customer accepted the invoice   * `rejected` - The customer rejected the invoice, so it must be corrected   * `no_response` - A response has not yet been received whithin the deadline, contact the customer to ascertain the status of the invoice 
    attr_accessor :ei_status

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
        :'entity' => :'entity',
        :'type' => :'type',
        :'number' => :'number',
        :'numeration' => :'numeration',
        :'date' => :'date',
        :'year' => :'year',
        :'currency' => :'currency',
        :'language' => :'language',
        :'subject' => :'subject',
        :'visible_subject' => :'visible_subject',
        :'rc_center' => :'rc_center',
        :'notes' => :'notes',
        :'rivalsa' => :'rivalsa',
        :'cassa' => :'cassa',
        :'amount_cassa' => :'amount_cassa',
        :'cassa_taxable' => :'cassa_taxable',
        :'amount_cassa_taxable' => :'amount_cassa_taxable',
        :'cassa2' => :'cassa2',
        :'amount_cassa2' => :'amount_cassa2',
        :'cassa2_taxable' => :'cassa2_taxable',
        :'amount_cassa2_taxable' => :'amount_cassa2_taxable',
        :'global_cassa_taxable' => :'global_cassa_taxable',
        :'amount_global_cassa_taxable' => :'amount_global_cassa_taxable',
        :'withholding_tax' => :'withholding_tax',
        :'withholding_tax_taxable' => :'withholding_tax_taxable',
        :'other_withholding_tax' => :'other_withholding_tax',
        :'stamp_duty' => :'stamp_duty',
        :'payment_method' => :'payment_method',
        :'use_split_payment' => :'use_split_payment',
        :'use_gross_prices' => :'use_gross_prices',
        :'e_invoice' => :'e_invoice',
        :'ei_data' => :'ei_data',
        :'ei_cassa_type' => :'ei_cassa_type',
        :'ei_cassa2_type' => :'ei_cassa2_type',
        :'ei_withholding_tax_causal' => :'ei_withholding_tax_causal',
        :'ei_other_withholding_tax_type' => :'ei_other_withholding_tax_type',
        :'ei_other_withholding_tax_causal' => :'ei_other_withholding_tax_causal',
        :'items_list' => :'items_list',
        :'payments_list' => :'payments_list',
        :'template' => :'template',
        :'delivery_note_template' => :'delivery_note_template',
        :'acc_inv_template' => :'acc_inv_template',
        :'h_margins' => :'h_margins',
        :'v_margins' => :'v_margins',
        :'show_payments' => :'show_payments',
        :'show_payment_method' => :'show_payment_method',
        :'show_totals' => :'show_totals',
        :'show_paypal_button' => :'show_paypal_button',
        :'show_notification_button' => :'show_notification_button',
        :'show_tspay_button' => :'show_tspay_button',
        :'delivery_note' => :'delivery_note',
        :'accompanying_invoice' => :'accompanying_invoice',
        :'dn_number' => :'dn_number',
        :'dn_date' => :'dn_date',
        :'dn_ai_packages_number' => :'dn_ai_packages_number',
        :'dn_ai_weight' => :'dn_ai_weight',
        :'dn_ai_causal' => :'dn_ai_causal',
        :'dn_ai_destination' => :'dn_ai_destination',
        :'dn_ai_transporter' => :'dn_ai_transporter',
        :'dn_ai_notes' => :'dn_ai_notes',
        :'is_marked' => :'is_marked',
        :'amount_net' => :'amount_net',
        :'amount_vat' => :'amount_vat',
        :'amount_gross' => :'amount_gross',
        :'amount_due_discount' => :'amount_due_discount',
        :'amount_rivalsa' => :'amount_rivalsa',
        :'amount_rivalsa_taxable' => :'amount_rivalsa_taxable',
        :'amount_withholding_tax' => :'amount_withholding_tax',
        :'amount_withholding_tax_taxable' => :'amount_withholding_tax_taxable',
        :'amount_other_withholding_tax' => :'amount_other_withholding_tax',
        :'amount_other_withholding_tax_taxable' => :'amount_other_withholding_tax_taxable',
        :'amount_enasarco_taxable' => :'amount_enasarco_taxable',
        :'extra_data' => :'extra_data',
        :'seen_date' => :'seen_date',
        :'next_due_date' => :'next_due_date',
        :'url' => :'url',
        :'attachment_url' => :'attachment_url',
        :'attachment_token' => :'attachment_token',
        :'ei_raw' => :'ei_raw',
        :'ei_status' => :'ei_status'
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
        :'entity' => :'Entity',
        :'type' => :'IssuedDocumentType',
        :'number' => :'Integer',
        :'numeration' => :'String',
        :'date' => :'Date',
        :'year' => :'Integer',
        :'currency' => :'Currency',
        :'language' => :'Language',
        :'subject' => :'String',
        :'visible_subject' => :'String',
        :'rc_center' => :'String',
        :'notes' => :'String',
        :'rivalsa' => :'Float',
        :'cassa' => :'Float',
        :'amount_cassa' => :'Float',
        :'cassa_taxable' => :'Float',
        :'amount_cassa_taxable' => :'Float',
        :'cassa2' => :'Float',
        :'amount_cassa2' => :'Float',
        :'cassa2_taxable' => :'Float',
        :'amount_cassa2_taxable' => :'Float',
        :'global_cassa_taxable' => :'Float',
        :'amount_global_cassa_taxable' => :'Float',
        :'withholding_tax' => :'Float',
        :'withholding_tax_taxable' => :'Float',
        :'other_withholding_tax' => :'Float',
        :'stamp_duty' => :'Float',
        :'payment_method' => :'PaymentMethod',
        :'use_split_payment' => :'Boolean',
        :'use_gross_prices' => :'Boolean',
        :'e_invoice' => :'Boolean',
        :'ei_data' => :'IssuedDocumentEiData',
        :'ei_cassa_type' => :'String',
        :'ei_cassa2_type' => :'String',
        :'ei_withholding_tax_causal' => :'String',
        :'ei_other_withholding_tax_type' => :'String',
        :'ei_other_withholding_tax_causal' => :'String',
        :'items_list' => :'Array<IssuedDocumentItemsListItem>',
        :'payments_list' => :'Array<IssuedDocumentPaymentsListItem>',
        :'template' => :'DocumentTemplate',
        :'delivery_note_template' => :'DocumentTemplate',
        :'acc_inv_template' => :'DocumentTemplate',
        :'h_margins' => :'Integer',
        :'v_margins' => :'Integer',
        :'show_payments' => :'Boolean',
        :'show_payment_method' => :'Boolean',
        :'show_totals' => :'ShowTotalsMode',
        :'show_paypal_button' => :'Boolean',
        :'show_notification_button' => :'Boolean',
        :'show_tspay_button' => :'Boolean',
        :'delivery_note' => :'Boolean',
        :'accompanying_invoice' => :'Boolean',
        :'dn_number' => :'Integer',
        :'dn_date' => :'Date',
        :'dn_ai_packages_number' => :'String',
        :'dn_ai_weight' => :'String',
        :'dn_ai_causal' => :'String',
        :'dn_ai_destination' => :'String',
        :'dn_ai_transporter' => :'String',
        :'dn_ai_notes' => :'String',
        :'is_marked' => :'Boolean',
        :'amount_net' => :'Float',
        :'amount_vat' => :'Float',
        :'amount_gross' => :'Float',
        :'amount_due_discount' => :'Float',
        :'amount_rivalsa' => :'Float',
        :'amount_rivalsa_taxable' => :'Float',
        :'amount_withholding_tax' => :'Float',
        :'amount_withholding_tax_taxable' => :'Float',
        :'amount_other_withholding_tax' => :'Float',
        :'amount_other_withholding_tax_taxable' => :'Float',
        :'amount_enasarco_taxable' => :'Float',
        :'extra_data' => :'IssuedDocumentExtraData',
        :'seen_date' => :'Date',
        :'next_due_date' => :'Date',
        :'url' => :'String',
        :'attachment_url' => :'String',
        :'attachment_token' => :'String',
        :'ei_raw' => :'Object',
        :'ei_status' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'number',
        :'numeration',
        :'date',
        :'year',
        :'subject',
        :'visible_subject',
        :'rc_center',
        :'notes',
        :'rivalsa',
        :'cassa',
        :'amount_cassa',
        :'cassa_taxable',
        :'amount_cassa_taxable',
        :'cassa2',
        :'amount_cassa2',
        :'cassa2_taxable',
        :'amount_cassa2_taxable',
        :'global_cassa_taxable',
        :'amount_global_cassa_taxable',
        :'withholding_tax',
        :'withholding_tax_taxable',
        :'other_withholding_tax',
        :'stamp_duty',
        :'use_split_payment',
        :'use_gross_prices',
        :'e_invoice',
        :'ei_data',
        :'ei_cassa_type',
        :'ei_cassa2_type',
        :'ei_withholding_tax_causal',
        :'ei_other_withholding_tax_type',
        :'ei_other_withholding_tax_causal',
        :'items_list',
        :'payments_list',
        :'h_margins',
        :'v_margins',
        :'show_payments',
        :'show_payment_method',
        :'show_paypal_button',
        :'show_notification_button',
        :'show_tspay_button',
        :'delivery_note',
        :'accompanying_invoice',
        :'dn_number',
        :'dn_date',
        :'dn_ai_packages_number',
        :'dn_ai_weight',
        :'dn_ai_causal',
        :'dn_ai_destination',
        :'dn_ai_transporter',
        :'dn_ai_notes',
        :'is_marked',
        :'amount_net',
        :'amount_vat',
        :'amount_gross',
        :'amount_due_discount',
        :'amount_rivalsa',
        :'amount_rivalsa_taxable',
        :'amount_withholding_tax',
        :'amount_withholding_tax_taxable',
        :'amount_other_withholding_tax',
        :'amount_other_withholding_tax_taxable',
        :'amount_enasarco_taxable',
        :'extra_data',
        :'seen_date',
        :'next_due_date',
        :'url',
        :'attachment_url',
        :'attachment_token',
        :'ei_raw',
        :'ei_status'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FattureInCloud_Ruby_Sdk::IssuedDocument` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FattureInCloud_Ruby_Sdk::IssuedDocument`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'entity')
        self.entity = attributes[:'entity']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'invoice'
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'numeration')
        self.numeration = attributes[:'numeration']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'year')
        self.year = attributes[:'year']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'visible_subject')
        self.visible_subject = attributes[:'visible_subject']
      end

      if attributes.key?(:'rc_center')
        self.rc_center = attributes[:'rc_center']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'rivalsa')
        self.rivalsa = attributes[:'rivalsa']
      end

      if attributes.key?(:'cassa')
        self.cassa = attributes[:'cassa']
      end

      if attributes.key?(:'amount_cassa')
        self.amount_cassa = attributes[:'amount_cassa']
      end

      if attributes.key?(:'cassa_taxable')
        self.cassa_taxable = attributes[:'cassa_taxable']
      end

      if attributes.key?(:'amount_cassa_taxable')
        self.amount_cassa_taxable = attributes[:'amount_cassa_taxable']
      end

      if attributes.key?(:'cassa2')
        self.cassa2 = attributes[:'cassa2']
      end

      if attributes.key?(:'amount_cassa2')
        self.amount_cassa2 = attributes[:'amount_cassa2']
      end

      if attributes.key?(:'cassa2_taxable')
        self.cassa2_taxable = attributes[:'cassa2_taxable']
      end

      if attributes.key?(:'amount_cassa2_taxable')
        self.amount_cassa2_taxable = attributes[:'amount_cassa2_taxable']
      end

      if attributes.key?(:'global_cassa_taxable')
        self.global_cassa_taxable = attributes[:'global_cassa_taxable']
      end

      if attributes.key?(:'amount_global_cassa_taxable')
        self.amount_global_cassa_taxable = attributes[:'amount_global_cassa_taxable']
      end

      if attributes.key?(:'withholding_tax')
        self.withholding_tax = attributes[:'withholding_tax']
      end

      if attributes.key?(:'withholding_tax_taxable')
        self.withholding_tax_taxable = attributes[:'withholding_tax_taxable']
      end

      if attributes.key?(:'other_withholding_tax')
        self.other_withholding_tax = attributes[:'other_withholding_tax']
      end

      if attributes.key?(:'stamp_duty')
        self.stamp_duty = attributes[:'stamp_duty']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'use_split_payment')
        self.use_split_payment = attributes[:'use_split_payment']
      end

      if attributes.key?(:'use_gross_prices')
        self.use_gross_prices = attributes[:'use_gross_prices']
      end

      if attributes.key?(:'e_invoice')
        self.e_invoice = attributes[:'e_invoice']
      end

      if attributes.key?(:'ei_data')
        self.ei_data = attributes[:'ei_data']
      end

      if attributes.key?(:'ei_cassa_type')
        self.ei_cassa_type = attributes[:'ei_cassa_type']
      end

      if attributes.key?(:'ei_cassa2_type')
        self.ei_cassa2_type = attributes[:'ei_cassa2_type']
      end

      if attributes.key?(:'ei_withholding_tax_causal')
        self.ei_withholding_tax_causal = attributes[:'ei_withholding_tax_causal']
      end

      if attributes.key?(:'ei_other_withholding_tax_type')
        self.ei_other_withholding_tax_type = attributes[:'ei_other_withholding_tax_type']
      end

      if attributes.key?(:'ei_other_withholding_tax_causal')
        self.ei_other_withholding_tax_causal = attributes[:'ei_other_withholding_tax_causal']
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

      if attributes.key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.key?(:'delivery_note_template')
        self.delivery_note_template = attributes[:'delivery_note_template']
      end

      if attributes.key?(:'acc_inv_template')
        self.acc_inv_template = attributes[:'acc_inv_template']
      end

      if attributes.key?(:'h_margins')
        self.h_margins = attributes[:'h_margins']
      end

      if attributes.key?(:'v_margins')
        self.v_margins = attributes[:'v_margins']
      end

      if attributes.key?(:'show_payments')
        self.show_payments = attributes[:'show_payments']
      end

      if attributes.key?(:'show_payment_method')
        self.show_payment_method = attributes[:'show_payment_method']
      end

      if attributes.key?(:'show_totals')
        self.show_totals = attributes[:'show_totals']
      else
        self.show_totals = 'all'
      end

      if attributes.key?(:'show_paypal_button')
        self.show_paypal_button = attributes[:'show_paypal_button']
      end

      if attributes.key?(:'show_notification_button')
        self.show_notification_button = attributes[:'show_notification_button']
      end

      if attributes.key?(:'show_tspay_button')
        self.show_tspay_button = attributes[:'show_tspay_button']
      end

      if attributes.key?(:'delivery_note')
        self.delivery_note = attributes[:'delivery_note']
      end

      if attributes.key?(:'accompanying_invoice')
        self.accompanying_invoice = attributes[:'accompanying_invoice']
      end

      if attributes.key?(:'dn_number')
        self.dn_number = attributes[:'dn_number']
      end

      if attributes.key?(:'dn_date')
        self.dn_date = attributes[:'dn_date']
      end

      if attributes.key?(:'dn_ai_packages_number')
        self.dn_ai_packages_number = attributes[:'dn_ai_packages_number']
      end

      if attributes.key?(:'dn_ai_weight')
        self.dn_ai_weight = attributes[:'dn_ai_weight']
      end

      if attributes.key?(:'dn_ai_causal')
        self.dn_ai_causal = attributes[:'dn_ai_causal']
      end

      if attributes.key?(:'dn_ai_destination')
        self.dn_ai_destination = attributes[:'dn_ai_destination']
      end

      if attributes.key?(:'dn_ai_transporter')
        self.dn_ai_transporter = attributes[:'dn_ai_transporter']
      end

      if attributes.key?(:'dn_ai_notes')
        self.dn_ai_notes = attributes[:'dn_ai_notes']
      end

      if attributes.key?(:'is_marked')
        self.is_marked = attributes[:'is_marked']
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

      if attributes.key?(:'amount_due_discount')
        self.amount_due_discount = attributes[:'amount_due_discount']
      end

      if attributes.key?(:'amount_rivalsa')
        self.amount_rivalsa = attributes[:'amount_rivalsa']
      end

      if attributes.key?(:'amount_rivalsa_taxable')
        self.amount_rivalsa_taxable = attributes[:'amount_rivalsa_taxable']
      end

      if attributes.key?(:'amount_withholding_tax')
        self.amount_withholding_tax = attributes[:'amount_withholding_tax']
      end

      if attributes.key?(:'amount_withholding_tax_taxable')
        self.amount_withholding_tax_taxable = attributes[:'amount_withholding_tax_taxable']
      end

      if attributes.key?(:'amount_other_withholding_tax')
        self.amount_other_withholding_tax = attributes[:'amount_other_withholding_tax']
      end

      if attributes.key?(:'amount_other_withholding_tax_taxable')
        self.amount_other_withholding_tax_taxable = attributes[:'amount_other_withholding_tax_taxable']
      end

      if attributes.key?(:'amount_enasarco_taxable')
        self.amount_enasarco_taxable = attributes[:'amount_enasarco_taxable']
      end

      if attributes.key?(:'extra_data')
        self.extra_data = attributes[:'extra_data']
      end

      if attributes.key?(:'seen_date')
        self.seen_date = attributes[:'seen_date']
      end

      if attributes.key?(:'next_due_date')
        self.next_due_date = attributes[:'next_due_date']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'attachment_url')
        self.attachment_url = attributes[:'attachment_url']
      end

      if attributes.key?(:'attachment_token')
        self.attachment_token = attributes[:'attachment_token']
      end

      if attributes.key?(:'ei_raw')
        self.ei_raw = attributes[:'ei_raw']
      end

      if attributes.key?(:'ei_status')
        self.ei_status = attributes[:'ei_status']
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
      ei_status_validator = EnumAttributeValidator.new('String', ["attempt", "missing", "not_sent", "sent", "pending", "processing", "error", "discarded", "not_delivered", "accepted", "rejected", "no_response"])
      return false unless ei_status_validator.valid?(@ei_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ei_status Object to be assigned
    def ei_status=(ei_status)
      validator = EnumAttributeValidator.new('String', ["attempt", "missing", "not_sent", "sent", "pending", "processing", "error", "discarded", "not_delivered", "accepted", "rejected", "no_response"])
      unless validator.valid?(ei_status)
        fail ArgumentError, "invalid value for \"ei_status\", must be one of #{validator.allowable_values}."
      end
      @ei_status = ei_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          entity == o.entity &&
          type == o.type &&
          number == o.number &&
          numeration == o.numeration &&
          date == o.date &&
          year == o.year &&
          currency == o.currency &&
          language == o.language &&
          subject == o.subject &&
          visible_subject == o.visible_subject &&
          rc_center == o.rc_center &&
          notes == o.notes &&
          rivalsa == o.rivalsa &&
          cassa == o.cassa &&
          amount_cassa == o.amount_cassa &&
          cassa_taxable == o.cassa_taxable &&
          amount_cassa_taxable == o.amount_cassa_taxable &&
          cassa2 == o.cassa2 &&
          amount_cassa2 == o.amount_cassa2 &&
          cassa2_taxable == o.cassa2_taxable &&
          amount_cassa2_taxable == o.amount_cassa2_taxable &&
          global_cassa_taxable == o.global_cassa_taxable &&
          amount_global_cassa_taxable == o.amount_global_cassa_taxable &&
          withholding_tax == o.withholding_tax &&
          withholding_tax_taxable == o.withholding_tax_taxable &&
          other_withholding_tax == o.other_withholding_tax &&
          stamp_duty == o.stamp_duty &&
          payment_method == o.payment_method &&
          use_split_payment == o.use_split_payment &&
          use_gross_prices == o.use_gross_prices &&
          e_invoice == o.e_invoice &&
          ei_data == o.ei_data &&
          ei_cassa_type == o.ei_cassa_type &&
          ei_cassa2_type == o.ei_cassa2_type &&
          ei_withholding_tax_causal == o.ei_withholding_tax_causal &&
          ei_other_withholding_tax_type == o.ei_other_withholding_tax_type &&
          ei_other_withholding_tax_causal == o.ei_other_withholding_tax_causal &&
          items_list == o.items_list &&
          payments_list == o.payments_list &&
          template == o.template &&
          delivery_note_template == o.delivery_note_template &&
          acc_inv_template == o.acc_inv_template &&
          h_margins == o.h_margins &&
          v_margins == o.v_margins &&
          show_payments == o.show_payments &&
          show_payment_method == o.show_payment_method &&
          show_totals == o.show_totals &&
          show_paypal_button == o.show_paypal_button &&
          show_notification_button == o.show_notification_button &&
          show_tspay_button == o.show_tspay_button &&
          delivery_note == o.delivery_note &&
          accompanying_invoice == o.accompanying_invoice &&
          dn_number == o.dn_number &&
          dn_date == o.dn_date &&
          dn_ai_packages_number == o.dn_ai_packages_number &&
          dn_ai_weight == o.dn_ai_weight &&
          dn_ai_causal == o.dn_ai_causal &&
          dn_ai_destination == o.dn_ai_destination &&
          dn_ai_transporter == o.dn_ai_transporter &&
          dn_ai_notes == o.dn_ai_notes &&
          is_marked == o.is_marked &&
          amount_net == o.amount_net &&
          amount_vat == o.amount_vat &&
          amount_gross == o.amount_gross &&
          amount_due_discount == o.amount_due_discount &&
          amount_rivalsa == o.amount_rivalsa &&
          amount_rivalsa_taxable == o.amount_rivalsa_taxable &&
          amount_withholding_tax == o.amount_withholding_tax &&
          amount_withholding_tax_taxable == o.amount_withholding_tax_taxable &&
          amount_other_withholding_tax == o.amount_other_withholding_tax &&
          amount_other_withholding_tax_taxable == o.amount_other_withholding_tax_taxable &&
          amount_enasarco_taxable == o.amount_enasarco_taxable &&
          extra_data == o.extra_data &&
          seen_date == o.seen_date &&
          next_due_date == o.next_due_date &&
          url == o.url &&
          attachment_url == o.attachment_url &&
          attachment_token == o.attachment_token &&
          ei_raw == o.ei_raw &&
          ei_status == o.ei_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, entity, type, number, numeration, date, year, currency, language, subject, visible_subject, rc_center, notes, rivalsa, cassa, amount_cassa, cassa_taxable, amount_cassa_taxable, cassa2, amount_cassa2, cassa2_taxable, amount_cassa2_taxable, global_cassa_taxable, amount_global_cassa_taxable, withholding_tax, withholding_tax_taxable, other_withholding_tax, stamp_duty, payment_method, use_split_payment, use_gross_prices, e_invoice, ei_data, ei_cassa_type, ei_cassa2_type, ei_withholding_tax_causal, ei_other_withholding_tax_type, ei_other_withholding_tax_causal, items_list, payments_list, template, delivery_note_template, acc_inv_template, h_margins, v_margins, show_payments, show_payment_method, show_totals, show_paypal_button, show_notification_button, show_tspay_button, delivery_note, accompanying_invoice, dn_number, dn_date, dn_ai_packages_number, dn_ai_weight, dn_ai_causal, dn_ai_destination, dn_ai_transporter, dn_ai_notes, is_marked, amount_net, amount_vat, amount_gross, amount_due_discount, amount_rivalsa, amount_rivalsa_taxable, amount_withholding_tax, amount_withholding_tax_taxable, amount_other_withholding_tax, amount_other_withholding_tax_taxable, amount_enasarco_taxable, extra_data, seen_date, next_due_date, url, attachment_url, attachment_token, ei_raw, ei_status].hash
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
