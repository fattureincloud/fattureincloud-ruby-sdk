# FattureInCloud_Ruby_Sdk::Receipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Receipt id | [optional] |
| **date** | **Date** | Receipt date | [optional] |
| **number** | **Float** | Receipt number | [optional] |
| **numeration** | **String** | Receipt numeration | [optional] |
| **amount_net** | **Float** | Receipt total net amount | [optional] |
| **amount_vat** | **Float** | Receipt total vat amount | [optional] |
| **amount_gross** | **Float** | Receipt total gross amount | [optional] |
| **use_gross_prices** | **Boolean** | Receipt uses gross prices | [optional] |
| **type** | [**ReceiptType**](ReceiptType.md) |  | [optional] |
| **description** | **String** | Receipt description | [optional] |
| **rc_center** | **String** | Receipt revenue center | [optional] |
| **created_at** | **String** | Receipt creation date | [optional] |
| **updated_at** | **String** | Receipt last update date | [optional] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **items_list** | [**Array&lt;ReceiptItemsListItem&gt;**](ReceiptItemsListItem.md) |  | [optional] |

