=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.30
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module FattureInCloud_Ruby_Sdk
  class EventType
    ISSUED_DOCUMENTS_INVOICES_CREATE = "it.fattureincloud.webhooks.issued_documents.invoices.create".freeze
    ISSUED_DOCUMENTS_INVOICES_UPDATE = "it.fattureincloud.webhooks.issued_documents.invoices.update".freeze
    ISSUED_DOCUMENTS_INVOICES_DELETE = "it.fattureincloud.webhooks.issued_documents.invoices.delete".freeze
    ISSUED_DOCUMENTS_QUOTES_CREATE = "it.fattureincloud.webhooks.issued_documents.quotes.create".freeze
    ISSUED_DOCUMENTS_QUOTES_UPDATE = "it.fattureincloud.webhooks.issued_documents.quotes.update".freeze
    ISSUED_DOCUMENTS_QUOTES_DELETE = "it.fattureincloud.webhooks.issued_documents.quotes.delete".freeze
    ISSUED_DOCUMENTS_PROFORMAS_CREATE = "it.fattureincloud.webhooks.issued_documents.proformas.create".freeze
    ISSUED_DOCUMENTS_PROFORMAS_UPDATE = "it.fattureincloud.webhooks.issued_documents.proformas.update".freeze
    ISSUED_DOCUMENTS_PROFORMAS_DELETE = "it.fattureincloud.webhooks.issued_documents.proformas.delete".freeze
    ISSUED_DOCUMENTS_RECEIPTS_CREATE = "it.fattureincloud.webhooks.issued_documents.receipts.create".freeze
    ISSUED_DOCUMENTS_RECEIPTS_UPDATE = "it.fattureincloud.webhooks.issued_documents.receipts.update".freeze
    ISSUED_DOCUMENTS_RECEIPTS_DELETE = "it.fattureincloud.webhooks.issued_documents.receipts.delete".freeze
    ISSUED_DOCUMENTS_DELIVERY_NOTES_CREATE = "it.fattureincloud.webhooks.issued_documents.delivery_notes.create".freeze
    ISSUED_DOCUMENTS_DELIVERY_NOTES_UPDATE = "it.fattureincloud.webhooks.issued_documents.delivery_notes.update".freeze
    ISSUED_DOCUMENTS_DELIVERY_NOTES_DELETE = "it.fattureincloud.webhooks.issued_documents.delivery_notes.delete".freeze
    ISSUED_DOCUMENTS_CREDIT_NOTES_CREATE = "it.fattureincloud.webhooks.issued_documents.credit_notes.create".freeze
    ISSUED_DOCUMENTS_CREDIT_NOTES_UPDATE = "it.fattureincloud.webhooks.issued_documents.credit_notes.update".freeze
    ISSUED_DOCUMENTS_CREDIT_NOTES_DELETE = "it.fattureincloud.webhooks.issued_documents.credit_notes.delete".freeze
    ISSUED_DOCUMENTS_ORDERS_CREATE = "it.fattureincloud.webhooks.issued_documents.orders.create".freeze
    ISSUED_DOCUMENTS_ORDERS_UPDATE = "it.fattureincloud.webhooks.issued_documents.orders.update".freeze
    ISSUED_DOCUMENTS_ORDERS_DELETE = "it.fattureincloud.webhooks.issued_documents.orders.delete".freeze
    ISSUED_DOCUMENTS_WORK_REPORTS_CREATE = "it.fattureincloud.webhooks.issued_documents.work_reports.create".freeze
    ISSUED_DOCUMENTS_WORK_REPORTS_UPDATE = "it.fattureincloud.webhooks.issued_documents.work_reports.update".freeze
    ISSUED_DOCUMENTS_WORK_REPORTS_DELETE = "it.fattureincloud.webhooks.issued_documents.work_reports.delete".freeze
    ISSUED_DOCUMENTS_SUPPLIER_ORDERS_CREATE = "it.fattureincloud.webhooks.issued_documents.supplier_orders.create".freeze
    ISSUED_DOCUMENTS_SUPPLIER_ORDERS_UPDATE = "it.fattureincloud.webhooks.issued_documents.supplier_orders.update".freeze
    ISSUED_DOCUMENTS_SUPPLIER_ORDERS_DELETE = "it.fattureincloud.webhooks.issued_documents.supplier_orders.delete".freeze
    ISSUED_DOCUMENTS_SELF_INVOICES_CREATE = "it.fattureincloud.webhooks.issued_documents.self_invoices.create".freeze
    ISSUED_DOCUMENTS_SELF_INVOICES_UPDATE = "it.fattureincloud.webhooks.issued_documents.self_invoices.update".freeze
    ISSUED_DOCUMENTS_SELF_INVOICES_DELETE = "it.fattureincloud.webhooks.issued_documents.self_invoices.delete".freeze
    ISSUED_DOCUMENTS_ALL_CREATE = "it.fattureincloud.webhooks.issued_documents.all.create".freeze
    ISSUED_DOCUMENTS_ALL_UPDATE = "it.fattureincloud.webhooks.issued_documents.all.update".freeze
    ISSUED_DOCUMENTS_ALL_DELETE = "it.fattureincloud.webhooks.issued_documents.all.delete".freeze
    RECEIVED_DOCUMENTS_CREATE = "it.fattureincloud.webhooks.received_documents.create".freeze
    RECEIVED_DOCUMENTS_UPDATE = "it.fattureincloud.webhooks.received_documents.update".freeze
    RECEIVED_DOCUMENTS_DELETE = "it.fattureincloud.webhooks.received_documents.delete".freeze
    RECEIPTS_CREATE = "it.fattureincloud.webhooks.receipts.create".freeze
    RECEIPTS_UPDATE = "it.fattureincloud.webhooks.receipts.update".freeze
    RECEIPTS_DELETE = "it.fattureincloud.webhooks.receipts.delete".freeze
    TAXES_CREATE = "it.fattureincloud.webhooks.taxes.create".freeze
    TAXES_UPDATE = "it.fattureincloud.webhooks.taxes.update".freeze
    TAXES_DELETE = "it.fattureincloud.webhooks.taxes.delete".freeze
    CASHBOOK_CREATE = "it.fattureincloud.webhooks.cashbook.create".freeze
    CASHBOOK_UPDATE = "it.fattureincloud.webhooks.cashbook.update".freeze
    CASHBOOK_DELETE = "it.fattureincloud.webhooks.cashbook.delete".freeze
    PRODUCTS_CREATE = "it.fattureincloud.webhooks.products.create".freeze
    PRODUCTS_UPDATE = "it.fattureincloud.webhooks.products.update".freeze
    PRODUCTS_DELETE = "it.fattureincloud.webhooks.products.delete".freeze
    PRODUCTS_STOCK_UPDATE = "it.fattureincloud.webhooks.products.stock_update".freeze
    ENTITIES_CLIENTS_CREATE = "it.fattureincloud.webhooks.entities.clients.create".freeze
    ENTITIES_CLIENTS_UPDATE = "it.fattureincloud.webhooks.entities.clients.update".freeze
    ENTITIES_CLIENTS_DELETE = "it.fattureincloud.webhooks.entities.clients.delete".freeze
    ENTITIES_SUPPLIERS_CREATE = "it.fattureincloud.webhooks.entities.suppliers.create".freeze
    ENTITIES_SUPPLIERS_UPDATE = "it.fattureincloud.webhooks.entities.suppliers.update".freeze
    ENTITIES_SUPPLIERS_DELETE = "it.fattureincloud.webhooks.entities.suppliers.delete".freeze
    ENTITIES_ALL_CREATE = "it.fattureincloud.webhooks.entities.all.create".freeze
    ENTITIES_ALL_UPDATE = "it.fattureincloud.webhooks.entities.all.update".freeze
    ENTITIES_ALL_DELETE = "it.fattureincloud.webhooks.entities.all.delete".freeze
    ISSUED_DOCUMENTS_E_INVOICES_STATUS_UPDATE = "it.fattureincloud.webhooks.issued_documents.e_invoices.status_update".freeze
    RECEIVED_DOCUMENTS_E_INVOICES_STATUS_UPDATE = "it.fattureincloud.webhooks.received_documents.e_invoices.status_update".freeze

    def self.all_vars
      @all_vars ||= [ISSUED_DOCUMENTS_INVOICES_CREATE, ISSUED_DOCUMENTS_INVOICES_UPDATE, ISSUED_DOCUMENTS_INVOICES_DELETE, ISSUED_DOCUMENTS_QUOTES_CREATE, ISSUED_DOCUMENTS_QUOTES_UPDATE, ISSUED_DOCUMENTS_QUOTES_DELETE, ISSUED_DOCUMENTS_PROFORMAS_CREATE, ISSUED_DOCUMENTS_PROFORMAS_UPDATE, ISSUED_DOCUMENTS_PROFORMAS_DELETE, ISSUED_DOCUMENTS_RECEIPTS_CREATE, ISSUED_DOCUMENTS_RECEIPTS_UPDATE, ISSUED_DOCUMENTS_RECEIPTS_DELETE, ISSUED_DOCUMENTS_DELIVERY_NOTES_CREATE, ISSUED_DOCUMENTS_DELIVERY_NOTES_UPDATE, ISSUED_DOCUMENTS_DELIVERY_NOTES_DELETE, ISSUED_DOCUMENTS_CREDIT_NOTES_CREATE, ISSUED_DOCUMENTS_CREDIT_NOTES_UPDATE, ISSUED_DOCUMENTS_CREDIT_NOTES_DELETE, ISSUED_DOCUMENTS_ORDERS_CREATE, ISSUED_DOCUMENTS_ORDERS_UPDATE, ISSUED_DOCUMENTS_ORDERS_DELETE, ISSUED_DOCUMENTS_WORK_REPORTS_CREATE, ISSUED_DOCUMENTS_WORK_REPORTS_UPDATE, ISSUED_DOCUMENTS_WORK_REPORTS_DELETE, ISSUED_DOCUMENTS_SUPPLIER_ORDERS_CREATE, ISSUED_DOCUMENTS_SUPPLIER_ORDERS_UPDATE, ISSUED_DOCUMENTS_SUPPLIER_ORDERS_DELETE, ISSUED_DOCUMENTS_SELF_INVOICES_CREATE, ISSUED_DOCUMENTS_SELF_INVOICES_UPDATE, ISSUED_DOCUMENTS_SELF_INVOICES_DELETE, ISSUED_DOCUMENTS_ALL_CREATE, ISSUED_DOCUMENTS_ALL_UPDATE, ISSUED_DOCUMENTS_ALL_DELETE, RECEIVED_DOCUMENTS_CREATE, RECEIVED_DOCUMENTS_UPDATE, RECEIVED_DOCUMENTS_DELETE, RECEIPTS_CREATE, RECEIPTS_UPDATE, RECEIPTS_DELETE, TAXES_CREATE, TAXES_UPDATE, TAXES_DELETE, CASHBOOK_CREATE, CASHBOOK_UPDATE, CASHBOOK_DELETE, PRODUCTS_CREATE, PRODUCTS_UPDATE, PRODUCTS_DELETE, PRODUCTS_STOCK_UPDATE, ENTITIES_CLIENTS_CREATE, ENTITIES_CLIENTS_UPDATE, ENTITIES_CLIENTS_DELETE, ENTITIES_SUPPLIERS_CREATE, ENTITIES_SUPPLIERS_UPDATE, ENTITIES_SUPPLIERS_DELETE, ENTITIES_ALL_CREATE, ENTITIES_ALL_UPDATE, ENTITIES_ALL_DELETE, ISSUED_DOCUMENTS_E_INVOICES_STATUS_UPDATE, RECEIVED_DOCUMENTS_E_INVOICES_STATUS_UPDATE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if EventType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #EventType"
    end
  end
end
