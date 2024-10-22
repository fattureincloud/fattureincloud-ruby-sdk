# FattureInCloud_Ruby_Sdk::IssuedDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Issued document id | [optional] |
| **entity** | [**Entity**](Entity.md) |  | [optional] |
| **type** | [**IssuedDocumentType**](IssuedDocumentType.md) |  | [optional][default to &#39;invoice&#39;] |
| **number** | **Integer** | Issued document number [If not specified, next number is used] | [optional] |
| **numeration** | **String** | Issued document numeration [Not available if type&#x3D;delivery_note] | [optional] |
| **date** | **Date** | Issued document date [defaults to today&#39;s date] | [optional] |
| **year** | **Integer** | Issued document year | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **language** | [**Language**](Language.md) |  | [optional] |
| **subject** | **String** | Issued document subject [not shown on the PDF] | [optional] |
| **visible_subject** | **String** | Issued document visible subject | [optional] |
| **rc_center** | **String** | Issued document revenue center [or cost center if type&#x3D;supplier_order]. | [optional] |
| **notes** | **String** | Issued document extra notes | [optional] |
| **rivalsa** | **Float** | Issued document \&quot;Rivalsa INPS\&quot; percentual value | [optional] |
| **cassa** | **Float** | Issued document \&quot;Cassa previdenziale\&quot; percentual value | [optional] |
| **amount_cassa** | **Float** | [Read Only] Issued document cassa amount. | [optional][readonly] |
| **cassa_taxable** | **Float** | Issued document cassa taxable percentage | [optional] |
| **amount_cassa_taxable** | **Float** | [Can be set only if cassa_taxable is NULL] Issued document cassa taxable amount | [optional] |
| **cassa2** | **Float** | Issued document \&quot;Cassa previdenziale 2\&quot; percentual value | [optional] |
| **amount_cassa2** | **Float** | [Read Only] Issued document cassa2 amount | [optional][readonly] |
| **cassa2_taxable** | **Float** | Issued document cassa2 taxable percentage | [optional] |
| **amount_cassa2_taxable** | **Float** | [Can be set only if cassa2_taxable is NULL] Issued document cassa2 taxable amount | [optional] |
| **global_cassa_taxable** | **Float** | Issued document global cassa taxable percentage | [optional] |
| **amount_global_cassa_taxable** | **Float** | [Can be set only if global_cassa_taxable is NULL] Issued document global cassa taxable amount | [optional] |
| **withholding_tax** | **Float** | Issued document withholding tax (ritenuta d&#39;acconto) percentual value | [optional] |
| **withholding_tax_taxable** | **Float** | Issued document withholding tax taxable (imponibile) percentual value | [optional] |
| **other_withholding_tax** | **Float** | Issued document other withholding tax (altra ritenuta) percentual value | [optional] |
| **stamp_duty** | **Float** | Issued document stamp duty value [0 if not present] | [optional] |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **use_split_payment** | **Boolean** | Issued document uses split payment | [optional] |
| **use_gross_prices** | **Boolean** | Issued document uses gross prices | [optional] |
| **e_invoice** | **Boolean** | Issued document is an e-invoice. | [optional] |
| **ei_data** | [**IssuedDocumentEiData**](IssuedDocumentEiData.md) |  | [optional] |
| **ei_cassa_type** | **String** | E-invoice cassa type | [optional] |
| **ei_cassa2_type** | **String** | E-invoice cassa2 type | [optional] |
| **ei_withholding_tax_causal** | **String** | E-invoice withholding tax causal | [optional] |
| **ei_other_withholding_tax_type** | **String** | E-invoice other withholding tax type | [optional] |
| **ei_other_withholding_tax_causal** | **String** | E-invoice other withholding tax causal | [optional] |
| **items_list** | [**Array&lt;IssuedDocumentItemsListItem&gt;**](IssuedDocumentItemsListItem.md) |  | [optional] |
| **payments_list** | [**Array&lt;IssuedDocumentPaymentsListItem&gt;**](IssuedDocumentPaymentsListItem.md) |  | [optional] |
| **template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **delivery_note_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **acc_inv_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **h_margins** | **Integer** | Issued document PDF horizontal margins | [optional] |
| **v_margins** | **Integer** | Issued document PDF vertical margins | [optional] |
| **show_payments** | **Boolean** | Show the expiration dates of the payments on the document | [optional] |
| **show_payment_method** | **Boolean** | Show the payment method details on the document | [optional] |
| **show_totals** | [**ShowTotalsMode**](ShowTotalsMode.md) |  | [optional][default to &#39;all&#39;] |
| **show_notification_button** | **Boolean** | Show notification button in the PDF | [optional] |
| **show_tspay_button** | **Boolean** | Show ts pay button in the PDF | [optional] |
| **delivery_note** | **Boolean** | Issued document has delivery note | [optional] |
| **accompanying_invoice** | **Boolean** | Issued document has an accompanying invoice | [optional] |
| **dn_number** | **Integer** | Issued document attached delivery note number | [optional] |
| **dn_date** | **Date** | Issued document attached delivery note date | [optional] |
| **dn_ai_packages_number** | **String** | Issued document attached delivery note number of packages | [optional] |
| **dn_ai_weight** | **String** | Issued document attached delivery note package weight | [optional] |
| **dn_ai_causal** | **String** | Issued document attached delivery note causal | [optional] |
| **dn_ai_destination** | **String** | Issued document attached delivery note destination | [optional] |
| **dn_ai_transporter** | **String** | Issued document attached delivery note transporter | [optional] |
| **dn_ai_notes** | **String** | Issued document attached delivery note notes | [optional] |
| **is_marked** | **Boolean** | Issued document is marked | [optional] |
| **amount_net** | **Float** | [Read only] Issued document total net amount | [optional][readonly] |
| **amount_vat** | **Float** | [Read Only] Issued document total vat amount | [optional][readonly] |
| **amount_gross** | **Float** | [Read Only] Issued document total gross amount | [optional][readonly] |
| **amount_due_discount** | **Float** | Issued document amount due discount | [optional] |
| **amount_rivalsa** | **Float** | [Read Only] Issued document rivalsa amount | [optional][readonly] |
| **amount_rivalsa_taxable** | **Float** | Issued document taxable rivalsa amount | [optional] |
| **amount_withholding_tax** | **Float** | [Read Only] Issued document withholding tax amount (ritenuta d&#39;acconto). | [optional][readonly] |
| **amount_withholding_tax_taxable** | **Float** | Issued document taxable withholding tax amount | [optional] |
| **amount_other_withholding_tax** | **Float** | [Read Only] Issued document other withholding tax amount (altra ritenuta) | [optional][readonly] |
| **amount_other_withholding_tax_taxable** | **Float** | Issued document taxable other withholding tax amount | [optional] |
| **amount_enasarco_taxable** | **Float** | Issued document taxable enasarco amount | [optional] |
| **extra_data** | [**IssuedDocumentExtraData**](IssuedDocumentExtraData.md) |  | [optional] |
| **seen_date** | **Date** | Issued document seen date | [optional] |
| **next_due_date** | **Date** | Issued document date of the next not paid payment | [optional] |
| **url** | **String** | [Temporary] [Read Only] Issued document url of the document PDF file | [optional] |
| **dn_url** | **String** | [Temporary] [Read Only] Issued document url of the attached delivery note PDF file | [optional] |
| **ai_url** | **String** | [Temporary] [Read Only] Issued document url of the accompanying invoice PDF file | [optional] |
| **attachment_url** | **String** | [Temporary] [Read Only] Issued document url of the attached file | [optional][readonly] |
| **attachment_token** | **String** | [Write Only] Issued document attachment token returned by POST /issued_documents/attachment | [optional] |
| **ei_raw** | **Object** | Issued document advanced raw attributes for e-invoices | [optional] |
| **ei_status** | **String** | [Read only] Status of the e-invoice.   * **attempt** - We are trying to send the invoice, please wait up to 2 hours   * **missing** - The invoice is missing   * **not_sent** - The invoice has yet to be sent   * **sent** - The invoice was sent   * **pending** - The checks for the digital signature and sending are in progress   * **processing** - The SDI is delivering the invoice to the customer   * **error** - An error occurred while handling the invoice, please try to resend it or contact support   * **discarded** - The invoice has been rejected by the SDI, so it must be corrected and re-sent   * **not_delivered** - The SDI was unable to deliver the invoice   * **accepted** - The customer accepted the invoice   * **rejected** - The customer rejected the invoice, so it must be corrected   * **no_response** - A response has not yet been received whithin the deadline, contact the customer to ascertain the status of the invoice   * **manual_accepted** - The customer accepted the invoice   * **manual_rejected** - The customer rejected the invoice  | [optional] |
| **locked** | **Boolean** | Issued Document can&#39;t be edited | [optional] |
| **created_at** | **String** | Issued document creation date | [optional] |
| **updated_at** | **String** | Issued document last update date | [optional] |

