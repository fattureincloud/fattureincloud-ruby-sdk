# FattureInCloud_Ruby_Sdk::IssuedDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the document. | [optional] |
| **entity** | [**Entity**](Entity.md) |  | [optional] |
| **type** | [**IssuedDocumentType**](IssuedDocumentType.md) |  | [optional][default to &#39;invoice&#39;] |
| **number** | **Integer** | Number of the document [If not specified, next number is used] | [optional] |
| **numeration** | **String** | Numeration of the document [Not available if type&#x3D;delivery_note] | [optional] |
| **date** | **Date** | Date of the document [If not specified, today date is used] | [optional] |
| **year** | **Integer** | Invoice year. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **language** | [**Language**](Language.md) |  | [optional] |
| **subject** | **String** | Issued document subject. | [optional] |
| **visible_subject** | **String** | Issued document visible subject. | [optional] |
| **rc_center** | **String** | Revenue center [or cost center if type&#x3D;supplier_order]. | [optional] |
| **notes** | **String** | Issued document extra notes. | [optional] |
| **rivalsa** | **Float** | \&quot;Rivalsa INPS\&quot; percentual value | [optional] |
| **cassa** | **Float** | \&quot;Cassa previdenziale\&quot; percentual value | [optional] |
| **amount_cassa** | **Float** | [Read Only] Cassa amount. | [optional][readonly] |
| **cassa_taxable** | **Float** | Cassa taxable percentage | [optional] |
| **amount_cassa_taxable** | **Float** | [Can be set only if cassa_taxable is NULL] Cassa2 taxable amount | [optional] |
| **cassa2** | **Float** | \&quot;Cassa previdenziale 2\&quot; percentual value | [optional] |
| **amount_cassa2** | **Float** | [Read Only] Cassa amount. | [optional][readonly] |
| **cassa2_taxable** | **Float** | Cassa2 taxable percentage | [optional] |
| **amount_cassa2_taxable** | **Float** | [Can be set only if cassa2_taxable is NULL] Cassa2 taxable amount | [optional] |
| **global_cassa_taxable** | **Float** | Global cassa taxable percentage | [optional] |
| **amount_global_cassa_taxable** | **Float** | [Can be set only if global_cassa_taxable is NULL] Global cassa taxable amount | [optional] |
| **withholding_tax** | **Float** | Withholding tax (ritenuta d&#39;acconto) percentual value | [optional] |
| **withholding_tax_taxable** | **Float** | Withholding tax taxable (imponibile) percentual value | [optional] |
| **other_withholding_tax** | **Float** | Other withholding tax (altra ritenuta) percentual value | [optional] |
| **stamp_duty** | **Float** | Stamp duty value [0 if not present] | [optional] |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **use_split_payment** | **Boolean** | Use split payment | [optional] |
| **use_gross_prices** | **Boolean** | Use gross prices | [optional] |
| **e_invoice** | **Boolean** | Indicates if this is an e-invoice. | [optional] |
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
| **h_margins** | **Integer** | Horizontal margins. | [optional] |
| **v_margins** | **Integer** | Vertical margins. | [optional] |
| **show_payments** | **Boolean** | Shows the expiration dates of the payments on the document. | [optional] |
| **show_payment_method** | **Boolean** | Show the payment method details on the document. | [optional] |
| **show_totals** | [**ShowTotalsMode**](ShowTotalsMode.md) |  | [optional][default to &#39;all&#39;] |
| **show_paypal_button** | **Boolean** | Show paypal button | [optional] |
| **show_notification_button** | **Boolean** | Show notification button | [optional] |
| **show_tspay_button** | **Boolean** | Show ts pay button. | [optional] |
| **delivery_note** | **Boolean** |  | [optional] |
| **accompanying_invoice** | **Boolean** | Attach an accompanying invoice. | [optional] |
| **dn_number** | **Integer** | Number (for the attached delivery note). | [optional] |
| **dn_date** | **Date** | Date (for the attached delivery note). | [optional] |
| **dn_ai_packages_number** | **String** | Number of packages (for the attached delivery note). | [optional] |
| **dn_ai_weight** | **String** | Weight (for the attached delivery note). | [optional] |
| **dn_ai_causal** | **String** | Causal (for the attached delivery note). | [optional] |
| **dn_ai_destination** | **String** | Destination (for the attached delivery note). | [optional] |
| **dn_ai_transporter** | **String** | Transporter (for the attached delivery note). | [optional] |
| **dn_ai_notes** | **String** | Notes (for the attached delivery note). | [optional] |
| **is_marked** | **Boolean** | This is true if the document is marked. | [optional] |
| **amount_net** | **Float** | [Read Only] Total net amount (competenze). | [optional][readonly] |
| **amount_vat** | **Float** | [Read Only] Total vat amount (IVA). | [optional][readonly] |
| **amount_gross** | **Float** | [Read Only] Total gross amount (totale documento). | [optional][readonly] |
| **amount_due_discount** | **Float** | Amount due discount | [optional] |
| **amount_rivalsa** | **Float** | [Read Only] Rivalsa amount. | [optional][readonly] |
| **amount_rivalsa_taxable** | **Float** | Taxable rivalsa amount | [optional] |
| **amount_withholding_tax** | **Float** | [Read Only] Withholding tax amount (ritenuta d&#39;acconto). | [optional][readonly] |
| **amount_withholding_tax_taxable** | **Float** | Taxable withholding tax amount | [optional] |
| **amount_other_withholding_tax** | **Float** | [Read Only] Other withholding tax amount (altra ritenuta). | [optional][readonly] |
| **amount_other_withholding_tax_taxable** | **Float** | Taxable other withholding tax amount | [optional] |
| **amount_enasarco_taxable** | **Float** | Taxable enasarco amount | [optional] |
| **extra_data** | [**IssuedDocumentExtraData**](IssuedDocumentExtraData.md) |  | [optional] |
| **seen_date** | **Date** | Date when the client/supplier has seen the document. | [optional] |
| **next_due_date** | **Date** | Date of the next not paid payment. | [optional] |
| **url** | **String** | Public url of the document PDF file. | [optional] |
| **attachment_url** | **String** | [Read Only] Public url of the attached file. Authomatically set if a valid attachment token is passed via POST /issued_documents or PUT /issued_documents/{documentId}. | [optional][readonly] |
| **attachment_token** | **String** | [Write Only] Attachment token returned by POST /issued_documents/attachment. Used to attach the file already uploaded. | [optional] |
| **ei_raw** | **Object** | Advanced raw attributes for e-invoices. | [optional] |
| **ei_status** | **String** | [Read only] Status of the e-invoice.   * &#x60;attempt&#x60; - We are trying to send the invoice, please wait up to 2 hours   * &#x60;missing&#x60; - The invoice is missing   * &#x60;not_sent&#x60; - The invoice has yet to be sent   * &#x60;sent&#x60; - The invoice was sent   * &#x60;pending&#x60; - The checks for the digital signature and sending are in progress   * &#x60;processing&#x60; - The SDI is delivering the invoice to the customer   * &#x60;error&#x60; - An error occurred while handling the invoice, please try to resend it or contact support   * &#x60;discarded&#x60; - The invoice has been rejected by the SDI, so it must be corrected and re-sent   * &#x60;not_delivered&#x60; - The SDI was unable to deliver the invoice   * &#x60;accepted&#x60; - The customer accepted the invoice   * &#x60;rejected&#x60; - The customer rejected the invoice, so it must be corrected   * &#x60;no_response&#x60; - A response has not yet been received whithin the deadline, contact the customer to ascertain the status of the invoice   * &#x60;manual_accepted&#x60; - The customer accepted the invoice   * &#x60;manual_rejected&#x60; - The customer rejected the invoice  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

