=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.1.0
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

# Common files
require 'fattureincloud_ruby_sdk/api_client'
require 'fattureincloud_ruby_sdk/api_error'
require 'fattureincloud_ruby_sdk/version'
require 'fattureincloud_ruby_sdk/configuration'

# Models
require 'fattureincloud_ruby_sdk/models/archive_document'
require 'fattureincloud_ruby_sdk/models/attachment_data'
require 'fattureincloud_ruby_sdk/models/cashbook_entry'
require 'fattureincloud_ruby_sdk/models/cashbook_entry_document'
require 'fattureincloud_ruby_sdk/models/cashbook_entry_kind'
require 'fattureincloud_ruby_sdk/models/cashbook_entry_type'
require 'fattureincloud_ruby_sdk/models/city'
require 'fattureincloud_ruby_sdk/models/client'
require 'fattureincloud_ruby_sdk/models/client_type'
require 'fattureincloud_ruby_sdk/models/company'
require 'fattureincloud_ruby_sdk/models/company_info'
require 'fattureincloud_ruby_sdk/models/company_info_access_info'
require 'fattureincloud_ruby_sdk/models/company_info_plan_info'
require 'fattureincloud_ruby_sdk/models/company_info_plan_info_functions'
require 'fattureincloud_ruby_sdk/models/company_info_plan_info_functions_status'
require 'fattureincloud_ruby_sdk/models/company_info_plan_info_limits'
require 'fattureincloud_ruby_sdk/models/company_plan_usage'
require 'fattureincloud_ruby_sdk/models/company_type'
require 'fattureincloud_ruby_sdk/models/controlled_company'
require 'fattureincloud_ruby_sdk/models/create_archive_document_request'
require 'fattureincloud_ruby_sdk/models/create_archive_document_response'
require 'fattureincloud_ruby_sdk/models/create_cashbook_entry_request'
require 'fattureincloud_ruby_sdk/models/create_cashbook_entry_response'
require 'fattureincloud_ruby_sdk/models/create_client_request'
require 'fattureincloud_ruby_sdk/models/create_client_response'
require 'fattureincloud_ruby_sdk/models/create_f24_request'
require 'fattureincloud_ruby_sdk/models/create_f24_response'
require 'fattureincloud_ruby_sdk/models/create_issued_document_request'
require 'fattureincloud_ruby_sdk/models/create_issued_document_response'
require 'fattureincloud_ruby_sdk/models/create_payment_account_request'
require 'fattureincloud_ruby_sdk/models/create_payment_account_response'
require 'fattureincloud_ruby_sdk/models/create_payment_method_request'
require 'fattureincloud_ruby_sdk/models/create_payment_method_response'
require 'fattureincloud_ruby_sdk/models/create_product_request'
require 'fattureincloud_ruby_sdk/models/create_product_response'
require 'fattureincloud_ruby_sdk/models/create_receipt_request'
require 'fattureincloud_ruby_sdk/models/create_receipt_response'
require 'fattureincloud_ruby_sdk/models/create_received_document_request'
require 'fattureincloud_ruby_sdk/models/create_received_document_response'
require 'fattureincloud_ruby_sdk/models/create_supplier_request'
require 'fattureincloud_ruby_sdk/models/create_supplier_response'
require 'fattureincloud_ruby_sdk/models/create_vat_type_request'
require 'fattureincloud_ruby_sdk/models/create_vat_type_response'
require 'fattureincloud_ruby_sdk/models/create_webhooks_subscription_request'
require 'fattureincloud_ruby_sdk/models/create_webhooks_subscription_response'
require 'fattureincloud_ruby_sdk/models/currency'
require 'fattureincloud_ruby_sdk/models/detailed_country'
require 'fattureincloud_ruby_sdk/models/document_template'
require 'fattureincloud_ruby_sdk/models/e_invoice_rejection_reason'
require 'fattureincloud_ruby_sdk/models/email'
require 'fattureincloud_ruby_sdk/models/email_attachment'
require 'fattureincloud_ruby_sdk/models/email_data'
require 'fattureincloud_ruby_sdk/models/email_data_default_sender_email'
require 'fattureincloud_ruby_sdk/models/email_recipient_status'
require 'fattureincloud_ruby_sdk/models/email_schedule'
require 'fattureincloud_ruby_sdk/models/email_schedule_include'
require 'fattureincloud_ruby_sdk/models/email_status'
require 'fattureincloud_ruby_sdk/models/entity'
require 'fattureincloud_ruby_sdk/models/entity_type'
require 'fattureincloud_ruby_sdk/models/event_type'
require 'fattureincloud_ruby_sdk/models/f24'
require 'fattureincloud_ruby_sdk/models/f24_status'
require 'fattureincloud_ruby_sdk/models/fatture_in_cloud_plan_type'
require 'fattureincloud_ruby_sdk/models/function_status'
require 'fattureincloud_ruby_sdk/models/get_archive_document_response'
require 'fattureincloud_ruby_sdk/models/get_cashbook_entry_response'
require 'fattureincloud_ruby_sdk/models/get_client_response'
require 'fattureincloud_ruby_sdk/models/get_company_info_response'
require 'fattureincloud_ruby_sdk/models/get_company_plan_usage_response'
require 'fattureincloud_ruby_sdk/models/get_e_invoice_rejection_reason_response'
require 'fattureincloud_ruby_sdk/models/get_email_data_response'
require 'fattureincloud_ruby_sdk/models/get_existing_issued_document_totals_request'
require 'fattureincloud_ruby_sdk/models/get_existing_issued_document_totals_response'
require 'fattureincloud_ruby_sdk/models/get_existing_received_document_totals_request'
require 'fattureincloud_ruby_sdk/models/get_existing_received_document_totals_response'
require 'fattureincloud_ruby_sdk/models/get_f24_response'
require 'fattureincloud_ruby_sdk/models/get_issued_document_pre_create_info_response'
require 'fattureincloud_ruby_sdk/models/get_issued_document_response'
require 'fattureincloud_ruby_sdk/models/get_new_issued_document_totals_request'
require 'fattureincloud_ruby_sdk/models/get_new_issued_document_totals_response'
require 'fattureincloud_ruby_sdk/models/get_new_received_document_totals_request'
require 'fattureincloud_ruby_sdk/models/get_new_received_document_totals_response'
require 'fattureincloud_ruby_sdk/models/get_payment_account_response'
require 'fattureincloud_ruby_sdk/models/get_payment_method_response'
require 'fattureincloud_ruby_sdk/models/get_product_response'
require 'fattureincloud_ruby_sdk/models/get_receipt_pre_create_info_response'
require 'fattureincloud_ruby_sdk/models/get_receipt_response'
require 'fattureincloud_ruby_sdk/models/get_receipts_monthly_totals_response'
require 'fattureincloud_ruby_sdk/models/get_received_document_pre_create_info_response'
require 'fattureincloud_ruby_sdk/models/get_received_document_response'
require 'fattureincloud_ruby_sdk/models/get_supplier_response'
require 'fattureincloud_ruby_sdk/models/get_user_info_response'
require 'fattureincloud_ruby_sdk/models/get_user_info_response_email_confirmation_state'
require 'fattureincloud_ruby_sdk/models/get_user_info_response_info'
require 'fattureincloud_ruby_sdk/models/get_vat_type_response'
require 'fattureincloud_ruby_sdk/models/get_webhooks_subscription_response'
require 'fattureincloud_ruby_sdk/models/issued_document'
require 'fattureincloud_ruby_sdk/models/issued_document_ei_data'
require 'fattureincloud_ruby_sdk/models/issued_document_extra_data'
require 'fattureincloud_ruby_sdk/models/issued_document_items_list_item'
require 'fattureincloud_ruby_sdk/models/issued_document_options'
require 'fattureincloud_ruby_sdk/models/issued_document_payments_list_item'
require 'fattureincloud_ruby_sdk/models/issued_document_payments_list_item_payment_terms'
require 'fattureincloud_ruby_sdk/models/issued_document_pre_create_info'
require 'fattureincloud_ruby_sdk/models/issued_document_pre_create_info_default_values'
require 'fattureincloud_ruby_sdk/models/issued_document_pre_create_info_extra_data_default_values'
require 'fattureincloud_ruby_sdk/models/issued_document_pre_create_info_items_default_values'
require 'fattureincloud_ruby_sdk/models/issued_document_status'
require 'fattureincloud_ruby_sdk/models/issued_document_totals'
require 'fattureincloud_ruby_sdk/models/issued_document_type'
require 'fattureincloud_ruby_sdk/models/join_issued_documents_response'
require 'fattureincloud_ruby_sdk/models/language'
require 'fattureincloud_ruby_sdk/models/list_archive_categories_response'
require 'fattureincloud_ruby_sdk/models/list_archive_documents_response'
require 'fattureincloud_ruby_sdk/models/list_archive_documents_response_page'
require 'fattureincloud_ruby_sdk/models/list_cashbook_entries_response'
require 'fattureincloud_ruby_sdk/models/list_cities_response'
require 'fattureincloud_ruby_sdk/models/list_clients_response'
require 'fattureincloud_ruby_sdk/models/list_clients_response_page'
require 'fattureincloud_ruby_sdk/models/list_cost_centers_response'
require 'fattureincloud_ruby_sdk/models/list_countries_response'
require 'fattureincloud_ruby_sdk/models/list_currencies_response'
require 'fattureincloud_ruby_sdk/models/list_delivery_notes_default_causals_response'
require 'fattureincloud_ruby_sdk/models/list_detailed_countries_response'
require 'fattureincloud_ruby_sdk/models/list_emails_response'
require 'fattureincloud_ruby_sdk/models/list_emails_response_page'
require 'fattureincloud_ruby_sdk/models/list_f24_response'
require 'fattureincloud_ruby_sdk/models/list_f24_response_aggregated_data'
require 'fattureincloud_ruby_sdk/models/list_f24_response_aggregation'
require 'fattureincloud_ruby_sdk/models/list_f24_response_page'
require 'fattureincloud_ruby_sdk/models/list_issued_documents_response'
require 'fattureincloud_ruby_sdk/models/list_issued_documents_response_page'
require 'fattureincloud_ruby_sdk/models/list_languages_response'
require 'fattureincloud_ruby_sdk/models/list_payment_accounts_response'
require 'fattureincloud_ruby_sdk/models/list_payment_methods_response'
require 'fattureincloud_ruby_sdk/models/list_product_categories_response'
require 'fattureincloud_ruby_sdk/models/list_products_response'
require 'fattureincloud_ruby_sdk/models/list_products_response_page'
require 'fattureincloud_ruby_sdk/models/list_receipts_response'
require 'fattureincloud_ruby_sdk/models/list_receipts_response_page'
require 'fattureincloud_ruby_sdk/models/list_received_document_categories_response'
require 'fattureincloud_ruby_sdk/models/list_received_documents_response'
require 'fattureincloud_ruby_sdk/models/list_received_documents_response_page'
require 'fattureincloud_ruby_sdk/models/list_revenue_centers_response'
require 'fattureincloud_ruby_sdk/models/list_suppliers_response'
require 'fattureincloud_ruby_sdk/models/list_suppliers_response_page'
require 'fattureincloud_ruby_sdk/models/list_templates_response'
require 'fattureincloud_ruby_sdk/models/list_units_of_measure_response'
require 'fattureincloud_ruby_sdk/models/list_user_companies_response'
require 'fattureincloud_ruby_sdk/models/list_user_companies_response_data'
require 'fattureincloud_ruby_sdk/models/list_vat_types_response'
require 'fattureincloud_ruby_sdk/models/list_webhooks_subscriptions_response'
require 'fattureincloud_ruby_sdk/models/modify_archive_document_request'
require 'fattureincloud_ruby_sdk/models/modify_archive_document_response'
require 'fattureincloud_ruby_sdk/models/modify_cashbook_entry_request'
require 'fattureincloud_ruby_sdk/models/modify_cashbook_entry_response'
require 'fattureincloud_ruby_sdk/models/modify_client_request'
require 'fattureincloud_ruby_sdk/models/modify_client_response'
require 'fattureincloud_ruby_sdk/models/modify_f24_request'
require 'fattureincloud_ruby_sdk/models/modify_f24_response'
require 'fattureincloud_ruby_sdk/models/modify_issued_document_request'
require 'fattureincloud_ruby_sdk/models/modify_issued_document_response'
require 'fattureincloud_ruby_sdk/models/modify_payment_account_request'
require 'fattureincloud_ruby_sdk/models/modify_payment_account_response'
require 'fattureincloud_ruby_sdk/models/modify_payment_method_request'
require 'fattureincloud_ruby_sdk/models/modify_payment_method_response'
require 'fattureincloud_ruby_sdk/models/modify_product_request'
require 'fattureincloud_ruby_sdk/models/modify_product_response'
require 'fattureincloud_ruby_sdk/models/modify_receipt_request'
require 'fattureincloud_ruby_sdk/models/modify_receipt_response'
require 'fattureincloud_ruby_sdk/models/modify_received_document_request'
require 'fattureincloud_ruby_sdk/models/modify_received_document_response'
require 'fattureincloud_ruby_sdk/models/modify_supplier_request'
require 'fattureincloud_ruby_sdk/models/modify_supplier_response'
require 'fattureincloud_ruby_sdk/models/modify_vat_type_request'
require 'fattureincloud_ruby_sdk/models/modify_vat_type_response'
require 'fattureincloud_ruby_sdk/models/modify_webhooks_subscription_request'
require 'fattureincloud_ruby_sdk/models/modify_webhooks_subscription_response'
require 'fattureincloud_ruby_sdk/models/monthly_total'
require 'fattureincloud_ruby_sdk/models/original_document_type'
require 'fattureincloud_ruby_sdk/models/pagination'
require 'fattureincloud_ruby_sdk/models/payment_account'
require 'fattureincloud_ruby_sdk/models/payment_account_type'
require 'fattureincloud_ruby_sdk/models/payment_method'
require 'fattureincloud_ruby_sdk/models/payment_method_details'
require 'fattureincloud_ruby_sdk/models/payment_method_type'
require 'fattureincloud_ruby_sdk/models/payment_terms_type'
require 'fattureincloud_ruby_sdk/models/permission_level'
require 'fattureincloud_ruby_sdk/models/permissions'
require 'fattureincloud_ruby_sdk/models/permissions_fic_issued_documents_detailed'
require 'fattureincloud_ruby_sdk/models/product'
require 'fattureincloud_ruby_sdk/models/receipt'
require 'fattureincloud_ruby_sdk/models/receipt_items_list_item'
require 'fattureincloud_ruby_sdk/models/receipt_pre_create_info'
require 'fattureincloud_ruby_sdk/models/receipt_type'
require 'fattureincloud_ruby_sdk/models/received_document'
require 'fattureincloud_ruby_sdk/models/received_document_info'
require 'fattureincloud_ruby_sdk/models/received_document_info_default_values'
require 'fattureincloud_ruby_sdk/models/received_document_info_items_default_values'
require 'fattureincloud_ruby_sdk/models/received_document_items_list_item'
require 'fattureincloud_ruby_sdk/models/received_document_payments_list_item'
require 'fattureincloud_ruby_sdk/models/received_document_payments_list_item_payment_terms'
require 'fattureincloud_ruby_sdk/models/received_document_totals'
require 'fattureincloud_ruby_sdk/models/received_document_type'
require 'fattureincloud_ruby_sdk/models/schedule_email_request'
require 'fattureincloud_ruby_sdk/models/send_e_invoice_request'
require 'fattureincloud_ruby_sdk/models/send_e_invoice_request_data'
require 'fattureincloud_ruby_sdk/models/send_e_invoice_request_options'
require 'fattureincloud_ruby_sdk/models/send_e_invoice_response'
require 'fattureincloud_ruby_sdk/models/send_e_invoice_response_data'
require 'fattureincloud_ruby_sdk/models/sender_email'
require 'fattureincloud_ruby_sdk/models/show_totals_mode'
require 'fattureincloud_ruby_sdk/models/supplier'
require 'fattureincloud_ruby_sdk/models/supplier_type'
require 'fattureincloud_ruby_sdk/models/transform_issued_document_response'
require 'fattureincloud_ruby_sdk/models/upload_archive_attachment_response'
require 'fattureincloud_ruby_sdk/models/upload_f24_attachment_response'
require 'fattureincloud_ruby_sdk/models/upload_issued_document_attachment_response'
require 'fattureincloud_ruby_sdk/models/upload_received_document_attachment_response'
require 'fattureincloud_ruby_sdk/models/user'
require 'fattureincloud_ruby_sdk/models/user_company_role'
require 'fattureincloud_ruby_sdk/models/vat_item'
require 'fattureincloud_ruby_sdk/models/vat_kind'
require 'fattureincloud_ruby_sdk/models/vat_type'
require 'fattureincloud_ruby_sdk/models/verify_e_invoice_xml_error_response'
require 'fattureincloud_ruby_sdk/models/verify_e_invoice_xml_error_response_error'
require 'fattureincloud_ruby_sdk/models/verify_e_invoice_xml_error_response_error_validation_result'
require 'fattureincloud_ruby_sdk/models/verify_e_invoice_xml_error_response_extra'
require 'fattureincloud_ruby_sdk/models/verify_e_invoice_xml_response'
require 'fattureincloud_ruby_sdk/models/verify_e_invoice_xml_response_data'
require 'fattureincloud_ruby_sdk/models/webhooks_subscription'
require 'fattureincloud_ruby_sdk/models/webhooks_subscription_config'
require 'fattureincloud_ruby_sdk/models/webhooks_subscription_mapping'

# APIs
require 'fattureincloud_ruby_sdk/api/archive_api'
require 'fattureincloud_ruby_sdk/api/cashbook_api'
require 'fattureincloud_ruby_sdk/api/clients_api'
require 'fattureincloud_ruby_sdk/api/companies_api'
require 'fattureincloud_ruby_sdk/api/emails_api'
require 'fattureincloud_ruby_sdk/api/info_api'
require 'fattureincloud_ruby_sdk/api/issued_documents_api'
require 'fattureincloud_ruby_sdk/api/issued_e_invoices_api'
require 'fattureincloud_ruby_sdk/api/products_api'
require 'fattureincloud_ruby_sdk/api/receipts_api'
require 'fattureincloud_ruby_sdk/api/received_documents_api'
require 'fattureincloud_ruby_sdk/api/settings_api'
require 'fattureincloud_ruby_sdk/api/suppliers_api'
require 'fattureincloud_ruby_sdk/api/taxes_api'
require 'fattureincloud_ruby_sdk/api/user_api'
require 'fattureincloud_ruby_sdk/api/webhooks_api'

# Filter
require 'fattureincloud_ruby_sdk/filter/operator'
require 'fattureincloud_ruby_sdk/filter/condition'
require 'fattureincloud_ruby_sdk/filter/conjunction'
require 'fattureincloud_ruby_sdk/filter/disjunction'
require 'fattureincloud_ruby_sdk/filter/filter'
require 'fattureincloud_ruby_sdk/filter/expression'

# OAuth
require 'fattureincloud_ruby_sdk/oauth2/oauth2'
require 'fattureincloud_ruby_sdk/oauth2/scope'

module FattureInCloud_Ruby_Sdk
  class << self
    # Customize default settings for the SDK using block.
    #   FattureInCloud_Ruby_Sdk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
