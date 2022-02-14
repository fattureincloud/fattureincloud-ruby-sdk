# FattureInCloud_Ruby_Sdk::Receipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Receipt unique identifier. | [optional] |
| **date** | **Date** | Receipt date. | [optional] |
| **number** | **Float** | Receipt number. | [optional] |
| **numeration** | **String** | If it&#39;s null or empty string use the default numeration. | [optional] |
| **amount_net** | **Float** | Total net amount. | [optional] |
| **amount_vat** | **Float** | Total vat amount. | [optional] |
| **amount_gross** | **Float** | Total gross amount. | [optional] |
| **use_gross_prices** | **Boolean** |  | [optional] |
| **type** | [**ReceiptType**](ReceiptType.md) |  | [optional] |
| **description** | **String** | Receipt description. | [optional] |
| **rc_center** | **String** | Revenue center. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **items_list** | [**Array&lt;ReceiptItemsListItem&gt;**](ReceiptItemsListItem.md) |  | [optional] |

