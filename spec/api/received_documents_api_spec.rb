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

# Unit tests for FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReceivedDocumentsApi' do
  before do
    # run before each test
    @api_instance = FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi.new

    @create_received_document_response_obj = { "data": { "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 222, "name": "Contanti", "virtual": false } }], "attachment_token": "bnopjao8gvydtgnewgiovs74yrfqwefEF" } }
    allow(@api_instance).to receive(:create_received_document) { @create_received_document_response_obj }

    @get_existing_received_document_totals_response_obj = { "data": { "amount_net": 592, "amount_vat": 20, "amount_gross": 612, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "amount_due": 612, "payments_sum": 592 } }
    allow(@api_instance).to receive(:get_existing_received_document_totals) { @get_existing_received_document_totals_response_obj }

    @get_new_received_document_totals_response_obj = { "data": { "amount_net": 592, "amount_vat": 20, "amount_gross": 612, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "amount_due": 612, "payments_sum": 592 } }
    allow(@api_instance).to receive(:get_new_received_document_totals) { @get_new_received_document_totals_response_obj }

    @get_received_document_response_obj = { "data": { "id": 12345, "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "created_at": "2021-08-15 14:02:02", "updated_at": "2021-08-15 14:02:02", "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 222, "name": "Contanti", "virtual": false } }], "attachment_url": "spesa_ger5i783t45hu6ti.pdf", "attachment_preview_url": nil, "extra_data": nil } }
    allow(@api_instance).to receive(:get_received_document) { @get_received_document_response_obj }

    @get_received_document_pre_create_info_response_obj = { "data": { "default_values": { "detailed": false }, "items_default_values": { "vat": nil }, "countries_list": ["Italia", "Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Anguilla", "Antartide", "Antigua e Barbuda", "Antille Olandesi", "Arabia Saudita", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaigian", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belgio", "Belize", "Benin", "Bermuda", "Bhutan", "Bielorussia", "Bolivia", "Bosnia ed Erzegovina", "Botswana", "Brasile", "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Cambogia", "Camerun", "Canada", "Capo Verde", "Ciad", "Cile", "Cina", "Cipro", "Citt\u00e0 del Vaticano", "Colombia", "Comore", "Corea del Nord", "Corea del Sud", "Costa Rica", "Costa d\'Avorio", "Croazia", "Cuba", "Danimarca", "Dominica", "Ecuador", "Egitto", "El Salvador", "Emirati Arabi Uniti", "Eritrea", "Estonia", "Etiopia", "Fiji", "Filippine", "Finlandia", "Francia", "Gabon", "Gambia", "Georgia", "Georgia del Sud e isole Sandwich", "Germania", "Ghana", "Giamaica", "Giappone", "Gibilterra", "Gibuti", "Giordania", "Grecia", "Grenada", "Groenlandia", "Guadalupa", "Guam", "Guatemala", "Guernsey - Channel Islands", "Guinea", "Guinea Equatoriale", "Guinea-Bissau", "Guyana", "Guyana Francese", "Haiti", "Heard Island e McDonald Islands", "Honduras", "Hong Kong", "India", "Indonesia", "Iran", "Iraq", "Irlanda", "Islanda", "Isola Bouvet", "Isola Christmas", "Isola di Man", "Isola Norfolk", "Isole Canarie (Spagna)", "Isole Cayman", "Isole Cocos e Keeling", "Isole Cook", "Isole Falkland", "Isole F\u00e6r \u00d8er", "Isole Marianne Settentrionali", "Isole Marshall", "Isole Minori Esterne degli USA", "Isole Pitcairn", "Isole Salomone", "Isole Vergini Americane", "Isole Vergini Britanniche", "Isole \u00c5land", "Israele", "Jersey - Channel Islands", "Kazakistan", "Kenia", "Kirghizistan", "Kiribati", "Kosovo", "Kuwait", "Laos", "Lesotho", "Lettonia", "Libano", "Liberia", "Libia", "Liechtenstein", "Lituania", "Lussemburgo", "Macao", "Macedonia", "Macedonia del Nord", "Madagascar", "Malawi", "Malaysia", "Maldive", "Mali", "Malta", "Marocco", "Martinica", "Mauritania", "Mauritius", "Mayotte", "Messico", "Micronesia", "Moldavia", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Mozambico", "Myanmar", "Namibia", "Nauru", "Nepal", "Nicaragua", "Niger", "Nigeria", "Niue", "Norvegia", "Nuova Caledonia", "Nuova Zelanda", "Oman", "Paesi Bassi", "Pakistan", "Palau", "Panama", "Papua Nuova Guinea", "Paraguay", "Per\u00f9", "Polinesia Francese", "Polonia", "Porto Rico", "Portogallo", "Qatar", "Regno Unito", "Repubblica Ceca", "Repubblica Centrafricana", "Repubblica Democratica del Congo", "Repubblica Dominicana", "Repubblica del Congo", "Riunione", "Romania", "Ruanda", "Russia", "Sahara Occidentale", "Saint Barthelemy", "Saint Kitts e Nevis", "Saint Pierre e Miquelon", "Saint Vincent e Grenadine", "Samoa", "Samoa Americane", "San Marino", "Sant\'Elena", "Santa Lucia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Siria", "Slovacchia", "Slovenia", "Somalia", "Spagna", "Sri Lanka", "Stato di Palestina", "Stati Uniti", "Sudafrica", "Sud Sudan", "Sudan", "Suriname", "Svalbard e Jan Mayen", "Svezia", "Svizzera", "Swaziland", "S\u00e3o Tom\u00e9 e Pr\u00edncipe", "Tagikistan", "Taiwan", "Tanzania", "Terre australi e ant. francesi", "Terr. Britannico dell\'Oc. Ind.", "Thailandia", "Timor Est", "Togo", "Tokelau", "Tonga", "Trinidad e Tobago", "Tunisia", "Turchia", "Turkmenistan", "Turks e Caicos", "Tuvalu", "Ucraina", "Uganda", "Ungheria", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Wallis e Futuna", "Yemen", "Zambia", "Zimbabwe"], "currencies_list": [{ "id": "AED", "symbol": "AED", "html_symbol": "AED", "exchange_rate": "4.09500" }, { "id": "ALL", "symbol": "ALL", "html_symbol": "ALL", "exchange_rate": "121.50000" }, { "id": "AUD", "symbol": "AUD", "html_symbol": "AUD", "exchange_rate": "1.62094" }, { "id": "AZN", "symbol": "AZN", "html_symbol": "AZN", "exchange_rate": "2.00130" }, { "id": "BGN", "symbol": "\u043b\u0432", "html_symbol": "BGN", "exchange_rate": "1.95583" }, { "id": "BRL", "symbol": "R$", "html_symbol": "R$", "exchange_rate": "4.50410" }, { "id": "BYN", "symbol": "BYN", "html_symbol": "BYN", "exchange_rate": "2.41000" }, { "id": "CAD", "symbol": "CAD", "html_symbol": "CAD", "exchange_rate": "1.49841" }, { "id": "CFA", "symbol": "CFA", "html_symbol": "CFA", "exchange_rate": "656.68000" }, { "id": "CHF", "symbol": "Fr.", "html_symbol": "Fr.", "exchange_rate": "1.12559" }, { "id": "CNY", "symbol": "CNY", "html_symbol": "CNY", "exchange_rate": "7.70160" }, { "id": "CRC", "symbol": "\u20a1", "html_symbol": "₡", "exchange_rate": "659.17000" }, { "id": "CZK", "symbol": "K\u010d", "html_symbol": "CZK", "exchange_rate": "25.80600" }, { "id": "DKK", "symbol": "kr.", "html_symbol": "kr.", "exchange_rate": "7.46750" }, { "id": "DOP", "symbol": "DOP", "html_symbol": "DOP", "exchange_rate": "56.50000" }, { "id": "DZD", "symbol": "DZD", "html_symbol": "DZD", "exchange_rate": "134.28300" }, { "id": "EGP", "symbol": "EGP", "html_symbol": "EGP", "exchange_rate": "18.98030" }, { "id": "EUR", "symbol": "\u20ac", "html_symbol": "€", "exchange_rate": "1.00000" }, { "id": "GBP", "symbol": "\u00a3", "html_symbol": "£", "exchange_rate": "0.88096" }, { "id": "GHS", "symbol": "GHS", "html_symbol": "GHS", "exchange_rate": "5.45834" }, { "id": "HKD", "symbol": "HK$", "html_symbol": "HK$", "exchange_rate": "8.75450" }, { "id": "HRK", "symbol": "HRK", "html_symbol": "HRK", "exchange_rate": "7.42640" }, { "id": "HUF", "symbol": "HUF", "html_symbol": "HUF", "exchange_rate": "326.24000" }, { "id": "ILS", "symbol": "\u20aa", "html_symbol": "₪", "exchange_rate": "4.02680" }, { "id": "INR", "symbol": "INR", "html_symbol": "INR", "exchange_rate": "77.76050" }, { "id": "ISK", "symbol": "ISK", "html_symbol": "ISK", "exchange_rate": "135.94600" }, { "id": "JPY", "symbol": "\u00a5", "html_symbol": "¥", "exchange_rate": "123.05800" }, { "id": "KRW", "symbol": "KRW", "html_symbol": "KRW", "exchange_rate": "1329.20000" }, { "id": "MAD", "symbol": "MAD", "html_symbol": "MAD", "exchange_rate": "10.78900" }, { "id": "MKD", "symbol": "MKD", "html_symbol": "MKD", "exchange_rate": "61.36700" }, { "id": "MXN", "symbol": "Mex$", "html_symbol": "Mex$", "exchange_rate": "21.17900" }, { "id": "MYR", "symbol": "MYR", "html_symbol": "MYR", "exchange_rate": "4.67310" }, { "id": "NGN", "symbol": "NGN", "html_symbol": "NGN", "exchange_rate": "405.17000" }, { "id": "NIS", "symbol": "NIS", "html_symbol": "NIS", "exchange_rate": "4020.00000" }, { "id": "NOK", "symbol": "kr", "html_symbol": "kr", "exchange_rate": "9.76270" }, { "id": "NZD", "symbol": "NZD", "html_symbol": "NZD", "exchange_rate": "1.71687" }, { "id": "OMR", "symbol": "OMR", "html_symbol": "OMR", "exchange_rate": "0.42950" }, { "id": "PEN", "symbol": "PEN", "html_symbol": "PEN", "exchange_rate": "3.73400" }, { "id": "PLN", "symbol": "z\u0142", "html_symbol": "PLN", "exchange_rate": "4.30330" }, { "id": "QAR", "symbol": "QAR", "html_symbol": "QAR", "exchange_rate": "4.06270" }, { "id": "RON", "symbol": "RON", "html_symbol": "RON", "exchange_rate": "4.66891" }, { "id": "RSD", "symbol": "RSD", "html_symbol": "RSD", "exchange_rate": "117.39414" }, { "id": "RUB", "symbol": "\u20bd", "html_symbol": "₽", "exchange_rate": "71.70370" }, { "id": "SAR", "symbol": "SAR", "html_symbol": "SAR", "exchange_rate": "4.18520" }, { "id": "SEK", "symbol": "SEK", "html_symbol": "SEK", "exchange_rate": "10.73374" }, { "id": "SGD", "symbol": "SGD", "html_symbol": "SGD", "exchange_rate": "1.53800" }, { "id": "THB", "symbol": "THB", "html_symbol": "THB", "exchange_rate": "35.56400" }, { "id": "TND", "symbol": "TND", "html_symbol": "TND", "exchange_rate": "3.34010" }, { "id": "TRY", "symbol": "TRY", "html_symbol": "TRY", "exchange_rate": "6.81590" }, { "id": "TWD", "symbol": "TWD", "html_symbol": "TWD", "exchange_rate": "35.14200" }, { "id": "UAH", "symbol": "UAH", "html_symbol": "UAH", "exchange_rate": "29.31490" }, { "id": "USD", "symbol": "$", "html_symbol": "$", "exchange_rate": "1.11570" }, { "id": "VND", "symbol": "\u20ab", "html_symbol": "₫", "exchange_rate": "26100.00000" }, { "id": "ZAR", "symbol": "R", "html_symbol": "R", "exchange_rate": "16.03080" }], "categories_list": ["Auto", "Telefono e internet", "Assicurazioni e quote", "Auto ed altri veicoli", "Computer e accessori", "Server e hosting", "merda", "Prva", "Farina etc.", "Cat", "Cibo", "gigi d\'asti", "banca d\'asti", "Varie", "zzzzz", "ooooo", "aaa", "ffff", "www", "bbb"], "payment_accounts_list": [{ "id": 111, "name": "Indesa - carta conto" }, { "id": 222, "name": "Contanti" }, { "id": 333, "name": "Bonifico_Bancario" }], "vat_types_list": [{ "id": 1334, "value": 0, "description": "Non imp. art. 17 c. 6 DPR 633\/72 e s.m.i.", "is_disabled": false }, { "id": 1333, "value": 0, "description": "Non sogg. art. 74 c. 7 e 8 DPR 633\/72", "is_disabled": false }, { "id": 1332, "value": 0, "description": "Non imp. art. 17 c. 6 lett. A TER DPR 633\/72", "is_disabled": false }, { "id": 1020, "value": 0, "description": "PA Non imp art. 2", "is_disabled": false }, { "id": 1018, "value": 0, "description": "Aliq. 22% reverse charge", "is_disabled": false }, { "id": 1015, "value": 22, "description": "Speciale prova", "is_disabled": false }, { "id": 1014, "value": 0, "description": "Ai sensi dellarticolo 123", "is_disabled": false }, { "id": 1013, "value": 0, "description": "Non imponibile art. 8 lett. A DPR 633\/72", "is_disabled": false }, { "id": 1010, "value": 0, "description": "NON IMPONIBILE IVA EX ART. 8 COMMA 1 LETT.A", "is_disabled": false }, { "id": 1009, "value": 20, "description": "Aliquota 20%", "is_disabled": false }, { "id": 1008, "value": 0, "description": "Non imp. art. 41 D.L. 427\/93", "is_disabled": false }, { "id": 1007, "value": 0, "description": "Non imp. art. 71 DPR 633\/72", "is_disabled": false }, { "id": 1006, "value": 0, "description": "Escl. art. 15 DPR 633\/72", "is_disabled": false }, { "id": 1004, "value": 0, "description": "Non imp. art. 1 L. 244\/2007", "is_disabled": false }, { "id": 1003, "value": 0, "description": "Non imp. art. 8 DPR 633\/72", "is_disabled": false }, { "id": 1002, "value": 0, "description": "Omaggi art. 2 c. 2 n. 4 DPR 633\/72", "is_disabled": false }, { "id": 1000, "value": 0, "description": "art.26 COMMA\' 3 DPR 633\/72", "is_disabled": false }, { "id": 7, "value": 0, "description": "Regime dei minimi", "is_disabled": false }, { "id": 9, "value": 0, "description": "Fuori campo IVA", "is_disabled": false }, { "id": 10, "value": 0, "description": "Oper. non soggetta, art.7 ter", "is_disabled": false }, { "id": 11, "value": 0, "description": "Inversione contabile, art.7 ter", "is_disabled": false }, { "id": 12, "value": 0, "description": "Non Imponibile", "is_disabled": false }, { "id": 13, "value": 0, "description": "Non Imp. Art.8", "is_disabled": false }, { "id": 14, "value": 0, "description": "Non Imp. Art.9 1C", "is_disabled": false }, { "id": 15, "value": 0, "description": "Non Imp. Art.14 Legge 537\/93", "is_disabled": false }, { "id": 16, "value": 0, "description": "Non Imp. Art.41 D.P.R. 331\/93", "is_disabled": false }, { "id": 17, "value": 0, "description": "Non Imp. Art.72, D.P.R. 633\/72", "is_disabled": false }, { "id": 18, "value": 0, "description": "Non Imp. Art.74 quotidiani\/libri", "is_disabled": false }, { "id": 19, "value": 0, "description": "Escluso Art.10", "is_disabled": false }, { "id": 20, "value": 0, "description": "Escluso Art.13 5C DPR 633\/72", "is_disabled": false }, { "id": 21, "value": 0, "description": "Escluso Art.15", "is_disabled": false }, { "id": 23, "value": 0, "description": "Escluso Art.74 ter D.P.R. 633\/72", "is_disabled": false }, { "id": 24, "value": 0, "description": "Escluso Art.10 comma 1", "is_disabled": false }, { "id": 25, "value": 0, "description": "Escluso Art.10 comma 20", "is_disabled": false }, { "id": 26, "value": 0, "description": "Non Imp. Art.9", "is_disabled": false }, { "id": 27, "value": 0, "description": "Escluso Art.10 n.27 D.P.R 633\/72", "is_disabled": false }, { "id": 30, "value": 0, "description": "Regime del margine art.36 41\/95", "is_disabled": false }, { "id": 31, "value": 0, "description": "Escluso Art.3 comma 4 D.P.R 633\/72", "is_disabled": false }, { "id": 32, "value": 0, "description": "Escluso Art.15\/1c D.P.R 633\/72", "is_disabled": false }, { "id": 33, "value": 0, "description": "Non imp. Art.8\/c D.P.R. 633\/72", "is_disabled": false }, { "id": 34, "value": 0, "description": "Non Imp. Art.7 ter", "is_disabled": false }, { "id": 35, "value": 0, "description": "Escluso Art.7 D.P.R 633\/72", "is_disabled": false }, { "id": 36, "value": 22, "description": "Esigibilita differita Art. 6 comma 5 D.P.R 633\/72", "is_disabled": false }, { "id": 37, "value": 0, "description": "Escluso Art.10 comma 9", "is_disabled": false }, { "id": 38, "value": 0, "description": "Non imp. Art.7 quater DPR 633\/72", "is_disabled": false }, { "id": 39, "value": 0, "description": "Non Imp. Art.8 comma 1A", "is_disabled": false }, { "id": 44, "value": 0, "description": "Fuori Campo IVA Art.7 ter D.P.R 633\/72", "is_disabled": false }, { "id": 45, "value": 0, "description": "Non Imp. Art.10 n.18 DPR 633\/72", "is_disabled": false }, { "id": 46, "value": 0, "description": "Esente Art.10 DPR 633\/72", "is_disabled": false }, { "id": 48, "value": 0, "description": "Non imp. art.40 D.L. 427\/93", "is_disabled": false }, { "id": 49, "value": 0, "description": "Non imp. art.41 D.L. 427\/93", "is_disabled": false }, { "id": 51, "value": 0, "description": "Non imp. art.8 DPR 633\/72", "is_disabled": false }, { "id": 52, "value": 0, "description": "Non imp. art.9 DPR 633\/72", "is_disabled": false }, { "id": 53, "value": 0, "description": "Regime minimi 2015", "is_disabled": false }, { "id": 55, "value": 0, "description": "Non soggetta IVA", "is_disabled": false }, { "id": 56, "value": 0, "description": "R.C. art. 74\/7-8 rottami e metalli ferrosi e non", "is_disabled": false }, { "id": 57, "value": 0, "description": "R.C. art. 17\/5 materiale oro e argento", "is_disabled": false }, { "id": 58, "value": 0, "description": "R.C. art. 17\/6\/a settore edile subappalto", "is_disabled": false }, { "id": 59, "value": 0, "description": "R.C. art. 17\/6\/a-bis fabbricati", "is_disabled": false }, { "id": 60, "value": 0, "description": "R.C. art. 17\/6\/b telefoni cellulari", "is_disabled": false }, { "id": 61, "value": 0, "description": "R.C. art. 17\/6\/c prodotti elettronici", "is_disabled": false }, { "id": 62, "value": 0, "description": "R.C. art. 17\/6\/a-ter servizi comparto edile e settori connessi", "is_disabled": false }, { "id": 63, "value": 0, "description": "R.C. art. 17\/6\/d-bis,d-ter,d-quater gas\/energia elettrica", "is_disabled": false }, { "id": 64, "value": 0, "description": "Non imp. art.71 DPR 633\/72 (Vaticano)", "is_disabled": false }, { "id": 65, "value": 0, "description": "Non imp. art.71 DPR 633\/72 (RSM)", "is_disabled": false }, { "id": 66, "value": 0, "description": "Contribuenti forfettari", "is_disabled": false }] } }
    allow(@api_instance).to receive(:get_received_document_pre_create_info) { @get_received_document_pre_create_info_response_obj }

    @list_received_documents_response_obj = { "current_page": 1, "data": [{ "id": 12345, "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "created_at": "2021-08-15 14:02:02", "updated_at": "2021-08-15 14:02:02", "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 222, "name": "Contanti", "virtual": false } }], "attachment_url": "spesa_ger5i783t45hu6ti.pdf", "attachment_preview_url": nil, "extra_data": nil }, { "id": 12346, "type": "expense", "description": "Assicurazione RCA", "iamortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "created_at": "2021-08-09 14:02:02", "updated_at": "2021-08-09 14:02:02", "entity": { "id": 89, "name": "Indesa Assicurazioni S.P.A." }, "date": "2021-08-08", "next_due_date": "2021-08-08", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 645.69, "amount_vat": 0, "amount_gross": 645.69, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 645.69, "due_date": "2021-08-08", "paid_date": "2021-08-08", "id": 999, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 333, "name": "Carta conto", "virtual": false } }], "attachment_url": "spesa_gjsd567e5hu6ti.pdf", "attachment_preview_url": nil, "extra_data": nil }], "first_page_url": "page=1", "from": 1, "last_page": 2, "last_page_url": "page=2", "next_page_url": "page=2", "path": "received_documents", "per_page": 50, "prev_page_url": nil, "to": 50, "total": 123 }
    allow(@api_instance).to receive(:list_received_documents) { @list_received_documents_response_obj }

    @modify_received_document_response_obj = { "data": { "id": 12345, "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "created_at": "2021-08-15 14:02:02", "updated_at": "2021-08-15 14:02:02", "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 222, "name": "Contanti", "virtual": false } }], "attachment_url": "spesa_ger5i783t45hu6ti.pdf", "attachment_preview_url": nil, "extra_data": nil } }
    allow(@api_instance).to receive(:modify_received_document) { @modify_received_document_response_obj }

    @upload_received_document_attachment_response_obj = { "data": { "attachment_token": "YmMyNWYxYzIwMTU3N2Y4ZGE3ZjZiMzg5OWY0ODNkZDQveXl5LmRvYw" } }
    allow(@api_instance).to receive(:upload_received_document_attachment) { @upload_received_document_attachment_response_obj }

  end

  after do
    # run after each test
  end

  describe 'test an instance of ReceivedDocumentsApi' do
    it 'should create an instance of ReceivedDocumentsApi' do
      expect(@api_instance).to be_instance_of(FattureInCloud_Ruby_Sdk::ReceivedDocumentsApi)
    end
  end

  # unit tests for create_received_document
  # Create Received Document
  # Creates a new document.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateReceivedDocumentRequest] :create_received_document_request Document to create
  # @return [CreateReceivedDocumentResponse]
  describe 'create_received_document test' do
    it 'should work' do
      opts = { "data": { "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 21, "name": "Contanti", "virtual": false, "attachment_token": "N3RmNTYycGMzZTRob3JkNWg2Nzg2Ympscjd1bW00dDIvbm9tZV9maWxl" } }] } }
      response = @api_instance.create_received_document(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @create_received_document_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for delete_received_document
  # Delete Received Document
  # Deletes the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_received_document test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for delete_received_document_attachment
  # Delete Received Document Attachment
  # Removes the attachment of the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_received_document_attachment test' do
    it 'should work' do
      expect(true).to eq(true)
    end
  end

  # unit tests for get_existing_received_document_totals
  # Get Existing Received Document Totals
  # Returns the totals for the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [GetExistingReceivedDocumentTotalsRequest] :get_existing_received_document_totals_request Received document.
  # @return [GetExistingReceivedDocumentTotalsResponse]
  describe 'get_existing_received_document_totals test' do
    it 'should work' do
      response = @api_instance.get_existing_received_document_totals(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_existing_received_document_totals_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_new_received_document_totals
  # Get New Received Document Totals
  # Returns the totals for a new document.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [GetNewReceivedDocumentTotalsRequest] :get_new_received_document_totals_request Received document.
  # @return [GetNewReceivedDocumentTotalsResponse]
  describe 'get_new_received_document_totals test' do
    it 'should work' do
      opts = { "data": { "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 21, "name": "Contanti", "virtual": false, "attachment_token": "N3RmNTYycGMzZTRob3JkNWg2Nzg2Ympscjd1bW00dDIvbm9tZV9maWxl" } }] } }
      response = @api_instance.get_new_received_document_totals(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_new_received_document_totals_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_received_document
  # Get Received Document
  # Gets the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @return [GetReceivedDocumentResponse]
  describe 'get_received_document test' do
    it 'should work' do
      response = @api_instance.get_received_document(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_received_document_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for get_received_document_pre_create_info
  # Get Received Document Pre-Create Info
  # Retrieves the information useful while creating a new document.
  # @param company_id The ID of the company.
  # @param type The type of the received document.
  # @param [Hash] opts the optional parameters
  # @return [GetReceivedDocumentPreCreateInfoResponse]
  describe 'get_received_document_pre_create_info test' do
    it 'should work' do
      response = @api_instance.get_received_document_pre_create_info(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @get_received_document_pre_create_info_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for list_received_documents
  # List Received Documents
  # Lists the received documents.
  # @param company_id The ID of the company.
  # @param type The type of the received document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields List of comma-separated fields.
  # @option opts [String] :fieldset Name of the fieldset.
  # @option opts [String] :sort List of comma-separated fields for result sorting (minus for desc sorting).
  # @option opts [Integer] :page The page to retrieve.
  # @option opts [Integer] :per_page The size of the page.
  # @option opts [String] :query Query for filtering the results.
  # @return [ListReceivedDocumentsResponse]
  describe 'list_received_documents test' do
    it 'should work' do
      response = @api_instance.list_received_documents(2, 22)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @list_received_documents_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for modify_received_document
  # Modify Received Document
  # Modifies the specified document.
  # @param company_id The ID of the company.
  # @param document_id The ID of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [ModifyReceivedDocumentRequest] :modify_received_document_request Modified document.
  # @return [ModifyReceivedDocumentResponse]
  describe 'modify_received_document test' do
    it 'should work' do
      opts = { "data": { "type": "expense", "description": "Soggiorno di lavoro", "amortization": 1, "rc_center": "", "invoice_number": "", "is_marked": false, "is_detailed": false, "e_invoice": false, "entity": { "id": 111, "name": "Hotel Rubino Palace" }, "date": "2021-08-15", "next_due_date": "2021-08-15", "currency": { "id": "EUR", "exchange_rate": "1.00000", "symbol": "\u20ac" }, "amount_net": 592, "amount_vat": 0, "amount_gross": 592, "amount_withholding_tax": 0, "amount_other_withholding_tax": 0, "tax_deductibility": 50, "vat_deductibility": 100, "items_list": nil, "payments_list": [{ "amount": 592, "due_date": "2021-08-15", "paid_date": "2021-08-15", "id": 777, "payment_terms": { "days": 0, "type": "standard" }, "status": "paid", "payment_account": { "id": 21, "name": "Contanti", "virtual": false, "attachment_token": "N3RmNTYycGMzZTRob3JkNWg2Nzg2Ympscjd1bW00dDIvbm9tZV9maWxl" } }] } }
      response = @api_instance.modify_received_document(2, opts)
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @modify_received_document_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

  # unit tests for upload_received_document_attachment
  # Upload Received Document Attachment
  # Uploads an attachment destined to a received document. The actual association between the document and the attachment must be implemented separately, using the returned token.
  # @param company_id The ID of the company.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filename Name of the file.
  # @option opts [File] :attachment Valid format: .png, .jpg, .gif, .pdf, .zip, .xls, .xlsx, .doc, .docx
  # @return [UploadReceivedDocumentAttachmentResponse]
  describe 'upload_received_document_attachment test' do
    it 'should work' do
      response = @api_instance.upload_received_document_attachment(2, {})
      response_obj = JSON.parse(response.to_json, object_class: OpenStruct)
      expected_json = @upload_received_document_attachment_response_obj.to_json
      actual_json = response.to_json

      expect(actual_json).to eq(expected_json)
    end
  end

end
