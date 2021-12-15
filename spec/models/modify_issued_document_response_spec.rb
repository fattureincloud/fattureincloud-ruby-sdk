=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 400.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.0.7
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FattureInCloud_Ruby_Sdk::ModifyIssuedDocumentResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FattureInCloud_Ruby_Sdk::ModifyIssuedDocumentResponse do
  instance = FattureInCloud_Ruby_Sdk::ModifyIssuedDocumentResponse.new
  instance.data = {
    id: 12345,
    type: "receipt",
    year: 2021,
    numeration: "rec123",
    subject: "",
    visible_subject: "",
    rc_center: "",
    stamp_duty: 0,
    use_gross_prices: false,
    e_invoice: false,
    delivery_note: false,
    accompanying_invoice: false,
    amount_net: 68.18,
    amount_vat: 6.82,
    amount_gross: 75,
    amount_due_discount: 0,
    amount_rivalsa: 0,
    amount_cassa: 0,
    amount_withholding_tax: 0,
    amount_other_withholding_tax: 0,
    h_margins: 15,
    v_margins: 16,
    show_payment_method: false,
    show_payments: true,
    show_totals: "all",
    show_paypal_button: true,
    show_notification_button: false,
    is_marked: false,
    entity: {
      id: 54321,
      name: "Mary Red S.r.L.",
      vat_number: "IT05432181211",
      tax_code: "IT05432181211",
      address_street: "Corso impero, 66",
      address_postal_code: "20900",
      address_city: "Milano",
      address_province: "MI",
      address_extra: "",
      country: "Italia",
      certified_email: "mary@pec.red.com",
      ei_code: "ABCXCR1"
    },
    date: "2021-08-20",
    number: 1,
    currency: {
      id: "EUR",
      exchange_rate: "1.00000",
      symbol: "€"
    },
    language: {
      code: "it",
      name: "Italiano"
    },
    notes: "",
    rivalsa: 0,
    cassa: 0,
    withholding_tax: 0,
    withholding_tax_taxable: 100,
    other_withholding_tax: 0,
    payment_method: {
      id: 4,
      name: "Credit card"
    },
    use_split_payment: false,
    items_list: [
      {
        product_id: 5432,
        code: "SG3",
        name: "Soggiorno",
        measure: "",
        net_price: 68.18182,
        category: "",
        id: 277876033,
        gross_price: 75,
        apply_withholding_taxes: true,
        discount: 0,
        discount_highlight: false,
        in_dn: false,
        qty: 1,
        vat: {
          id: 3,
          value: 10,
          description: ""
        },
        stock: false,
        description: "",
        not_taxable: false
      }
    ],
    payments_list: [
      {
        amount: 75,
        due_date: "2020-08-23",
        paid_date: nil,
        id: 69078013,
        payment_terms: {
          days: 0,
          type: "standard"
        },
        status: "not_paid",
        payment_account: nil
      }
    ],
    attachment_url: "kdijrnf893hnwkfk45f50f.pdf",
    next_due_date: "2020-08-23",
    template: {
      id: 2821,
      name: "Light Smoke"
    },
    url: "y12h45rn9yf2mse0p43t7ec90vr.pdf"
  }
  
  describe 'test an instance of ModifyIssuedDocumentResponse' do
    it 'should create an instance of ModifyIssuedDocumentResponse' do
      expect(instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ModifyIssuedDocumentResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
