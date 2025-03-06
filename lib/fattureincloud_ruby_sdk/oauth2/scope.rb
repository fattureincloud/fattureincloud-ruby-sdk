module FattureInCloud_Ruby_Sdk
  # The Scope class represents the scope enum.
  class Scope
    # Read permission to the Clients registry
    ENTITY_CLIENTS_READ = 'entity.clients:r'.freeze

    # Write permission to the Clients registry
    ENTITY_CLIENTS_ALL = 'entity.clients:a'.freeze

    # Read permission to the Suppliers registry
    ENTITY_SUPPLIERS_READ = 'entity.suppliers:r'.freeze

    # Write permission to the Suppliers registry
    ENTITY_SUPPLIERS_ALL = 'entity.suppliers:a'.freeze

    # Read permission to the Products
    PRODUCTS_READ = 'products:r'.freeze

    # Write permission to the Products
    PRODUCTS_ALL = 'products:a'.freeze

    # Read permission to the issued Invoices
    ISSUED_DOCUMENTS_INVOICES_READ = 'issued_documents.invoices:r'.freeze

    # Read permission to the issued Credit Notes
    ISSUED_DOCUMENTS_CREDIT_NOTES_READ = 'issued_documents.credit_notes:r'.freeze

    # Read permission to the issued Receipts
    ISSUED_DOCUMENTS_RECEIPTS_READ = 'issued_documents.receipts:r'.freeze

    # Read permission to the issued Orders
    ISSUED_DOCUMENTS_ORDERS_READ = 'issued_documents.orders:r'.freeze

    # Read permission to the issued Quotes
    ISSUED_DOCUMENTS_QUOTES_READ = 'issued_documents.quotes:r'.freeze

    # Read permission to the issued Proformas
    ISSUED_DOCUMENTS_PROFORMAS_READ = 'issued_documents.proformas:r'.freeze

    # Read permission to the issued Delivery Notes
    ISSUED_DOCUMENTS_DELIVERY_NOTES_READ = 'issued_documents.delivery_notes:r'.freeze

    # Read permission to the issued Work Reports
    ISSUED_DOCUMENTS_WORK_REPORTS_READ = 'issued_documents.work_reports:r'.freeze

    # Read permission to the issued Supplier Orders
    ISSUED_DOCUMENTS_SUPPLIER_ORDERS_READ = 'issued_documents.supplier_orders:r'.freeze

    # Read permission to the issued Self Invoices
    ISSUED_DOCUMENTS_SELF_INVOICES_READ = 'issued_documents.self_invoices:r'.freeze

    # Write permission to the issued Invoices
    ISSUED_DOCUMENTS_INVOICES_ALL = 'issued_documents.invoices:a'.freeze

    # Write permission to the issued Credit Notes
    ISSUED_DOCUMENTS_CREDIT_NOTES_ALL = 'issued_documents.credit_notes:a'.freeze

    # Write permission to the issued issued Receipts
    ISSUED_DOCUMENTS_RECEIPTS_ALL = 'issued_documents.receipts:a'.freeze

    # Write permission to the issued Orders
    ISSUED_DOCUMENTS_ORDERS_ALL = 'issued_documents.orders:a'.freeze

    # Write permission to the issued Quotes
    ISSUED_DOCUMENTS_QUOTES_ALL = 'issued_documents.quotes:a'.freeze

    # Write permission to the issued Proformas
    ISSUED_DOCUMENTS_PROFORMAS_ALL = 'issued_documents.proformas:a'.freeze

    # Write permission to the issued Delivery Notes
    ISSUED_DOCUMENTS_DELIVERY_NOTES_ALL = 'issued_documents.delivery_notes:a'.freeze

    # Write permission to the issued Work Reports
    ISSUED_DOCUMENTS_WORK_REPORTS_ALL = 'issued_documents.work_reports:a'.freeze

    # Write permission to the issued Supplier Orders
    ISSUED_DOCUMENTS_SUPPLIER_ORDERS_ALL = 'issued_documents.supplier_orders:a'.freeze

    # Write permission to the issued Self Invoices
    ISSUED_DOCUMENTS_SELF_INVOICES_ALL = 'issued_documents.self_invoices:a'.freeze

    # Read permission to the Received Documents
    RECEIVED_DOCUMENTS_READ = 'received_documents:r'.freeze

    # Write permission to the Received Documents
    RECEIVED_DOCUMENTS_ALL = 'received_documents:a'.freeze

    # Read permission to the Stock movements
    STOCK_READ = 'stock:r'.freeze

    # Write permission to the Stock movements
    STOCK_ALL = 'stock:a'.freeze

    # Read permission to the Receipts
    RECEIPTS_READ = 'receipts:r'.freeze

    # Write permission to the Receipts
    RECEIPTS_ALL = 'receipts:a'.freeze

    # Read permission to the Calendar
    CALENDAR_READ = 'calendar:r'.freeze

    # Write permission to the Calendar
    CALENDAR_ALL = 'calendar:a'.freeze

    # Read permission to the Taxes
    TAXES_READ = 'taxes:r'.freeze

    # Write permission to the Taxes
    TAXES_ALL = 'taxes:a'.freeze

    # Read permission to the Archive Documents
    ARCHIVE_READ = 'archive:r'.freeze

    # Read permission to the Archive Documents
    ARCHIVE_ALL = 'archive:a'.freeze

    # Read permission to the Emails
    EMAILS_READ = 'emails:r'.freeze

    # Read permission to the Cashbook
    CASHBOOK_READ = 'cashbook:r'.freeze

    # Write permission to the Cashbook
    CASHBOOK_ALL = 'cashbook:a'.freeze

    # Read permission to the Settings
    SETTINGS_READ = 'settings:r'.freeze

    # Write permission to the Settings
    SETTINGS_ALL = 'settings:a'.freeze

    # Read permission to the company Situation
    SITUATION_READ = 'situation:r'.freeze
  end
end
