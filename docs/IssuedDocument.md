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
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **language** | [**Language**](Language.md) |  | [optional] |
| **subject** | **String** | Issued document subject. | [optional] |
| **visible_subject** | **String** | Issued document visible subject. | [optional] |
| **rc_center** | **String** | Revenue center [or cost center if type&#x3D;supplier_order]. | [optional] |
| **notes** | **String** | Issued document extra notes. | [optional] |
| **rivalsa** | **Float** | \&quot;Rivalsa INPS\&quot; percentual value | [optional] |
| **cassa** | **Float** | \&quot;Cassa previdenziale\&quot; percentual value | [optional] |
| **withholding_tax** | **Float** | Withholding tax (ritenuta d&#39;acconto) percentual value | [optional] |
| **withholding_tax_taxable** | **Float** | Withholding tax taxable (imponibile) percentual value | [optional] |
| **other_withholding_tax** | **Float** | Other withholding tax (altra ritenuta) percentual value | [optional] |
| **stamp_duty** | **Float** | Stamp duty value [0 if not present] | [optional] |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **use_split_payment** | **Boolean** |  | [optional][default to false] |
| **use_gross_prices** | **Boolean** |  | [optional][default to false] |
| **e_invoice** | **Boolean** | Indicates if this is an e-invoice. | [optional][default to false] |
| **ei_data** | [**IssuedDocumentEiData**](IssuedDocumentEiData.md) |  | [optional] |
| **items_list** | [**Array&lt;IssuedDocumentItemsList&gt;**](IssuedDocumentItemsList.md) |  | [optional] |
| **payments_list** | [**Array&lt;IssuedDocumentPaymentsList&gt;**](IssuedDocumentPaymentsList.md) |  | [optional] |
| **template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **delivery_note_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **acc_inv_template** | [**DocumentTemplate**](DocumentTemplate.md) |  | [optional] |
| **h_margins** | **Integer** | Horizontal margins. | [optional] |
| **show_payments** | **Boolean** | Shows the expiration dates of the payments on the document. | [optional] |
| **show_payment_method** | **Boolean** | Show the payment method details on the document. | [optional] |
| **show_totals** | [**ShowTotalsMode**](ShowTotalsMode.md) |  | [optional][default to &#39;all&#39;] |
| **v_margins** | **Integer** | Vertical margins. | [optional] |
| **show_paypal_button** | **Boolean** |  | [optional][default to false] |
| **show_notification_button** | **Boolean** |  | [optional][default to false] |
| **delivery_note** | **Boolean** |  | [optional] |
| **accompanying_invoice** | **Boolean** | Attach an accompanying invoice. | [optional][default to false] |
| **dn_number** | **Integer** | Number (for the attached delivery note). | [optional] |
| **dn_date** | **Date** | Date (for the attached delivery note). | [optional] |
| **dn_ai_packages_number** | **String** | Number of packages (for the attached delivery note). | [optional] |
| **dn_ai_weight** | **String** | Weight (for the attached delivery note). | [optional] |
| **dn_ai_causal** | **String** | Causal (for the attached delivery note). | [optional] |
| **dn_ai_destination** | **String** | Destination (for the attached delivery note). | [optional] |
| **dn_ai_transporter** | **String** | Transporter (for the attached delivery note). | [optional] |
| **dn_ai_notes** | **String** | Notes (for the attached delivery note). | [optional] |
| **refers_to** | [**IssuedDocumentRefersTo**](IssuedDocumentRefersTo.md) |  | [optional] |
| **is_marked** | **Boolean** | This is true if the document is marked. | [optional] |
| **amount_net** | **Float** | [Read Only] Total net amount (competenze). | [optional][readonly] |
| **amount_vat** | **Float** | [Read Only] Total vat amount (IVA). | [optional][readonly] |
| **amount_gross** | **Float** | [Read Only] Total gross amount (totale documento). | [optional][readonly] |
| **amount_rivalsa** | **Float** | [Read Only] Rivalsa amount. | [optional][readonly] |
| **amount_cassa** | **Float** | [Read Only] Cassa amount. | [optional][readonly] |
| **amount_withholding_tax** | **Float** | [Read Only] Withholding tax amount (ritenuta d&#39;acconto). | [optional][readonly] |
| **amount_other_withholding_tax** | **Float** | [Read Only] Other withholding tax amount (altra ritenuta). | [optional][readonly] |
| **extra_data** | [**IssuedDocumentExtraData**](IssuedDocumentExtraData.md) |  | [optional] |
| **seen_date** | **Date** | Date when the client/supplier has seen the document. | [optional] |
| **next_due_date** | **Date** | Date of the next not paid payment. | [optional] |
| **url** | **String** | Public url of the document PDF file. | [optional] |
| **attachment_url** | **String** | [Read Only] Public url of the attached file. Authomatically set if a valid attachment token is passed via POST /issued_documents or PUT /issued_documents/{documentId}. | [optional][readonly] |
| **attachment_token** | **String** | [Write Only] Attachment token returned by POST /issued_documents/attachment. Used to attach the file already uploaded. | [optional] |
| **ei_raw** | **Object** | Advanced raw attributes for e-invoices. | [optional] |
| **show_tspay_button** | **Boolean** | Show ts pay button. | [optional] |
| **year** | **Integer** | Invoice year. | [optional] |
| **amount_rivalsa_taxable** | **Float** |  | [optional] |
| **amount_global_cassa_taxable** | **Float** |  | [optional] |
| **amount_cassa_taxable** | **Float** |  | [optional] |
| **amount_cassa2** | **Float** |  | [optional] |
| **amount_cassa2_taxable** | **Float** |  | [optional] |
| **amount_withholding_tax_taxable** | **Float** |  | [optional] |
| **amount_enasarco_taxable** | **Float** |  | [optional] |
| **amount_other_withholding_tax_taxable** | **Float** |  | [optional] |
| **ei_cassa_type** | **String** |  | [optional] |
| **ei_cassa2_type** | **String** |  | [optional] |
| **ei_withholding_tax_causal** | **String** |  | [optional] |
| **ei_other_withholding_tax_type** | **String** |  | [optional] |
| **ei_other_withholding_tax_causal** | **String** |  | [optional] |
| **amount_due_discount** | **Float** |  | [optional] |

