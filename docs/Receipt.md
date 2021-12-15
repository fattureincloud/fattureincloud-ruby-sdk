# FattureInCloud_Ruby_Sdk::Receipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Receipt unique identifier. | [optional] |
| **date** | **Date** | Receipt date. |  |
| **number** | **Float** | Receipt number. | [optional] |
| **numeration** | **String** | If it&#39;s null or empty string use the default numeration. | [optional] |
| **amount_net** | **Float** | Total net amount. | [optional] |
| **amount_vat** | **Float** | Total vat amount. | [optional] |
| **amount_gross** | **Float** | Total gross amount. | [optional] |
| **use_gross_prices** | **Boolean** |  | [optional][default to false] |
| **type** | [**ReceiptType**](ReceiptType.md) |  |  |
| **description** | **String** | Receipt description. | [optional] |
| **rc_center** | **String** | Revenue center. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **payment_account** | [**PaymentAccount**](PaymentAccount.md) |  |  |
| **items_list** | [**Array&lt;ReceiptItemsListItem&gt;**](ReceiptItemsListItem.md) |  | [optional] |

