# FattureInCloud_Ruby_Sdk::CashbookEntryInOut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Cashbook unique identifier. |  |
| **date** | **Date** | Cashbook date. |  |
| **description** | **String** | Cashbook description. |  |
| **kind** | [**CashbookEntryKind**](CashbookEntryKind.md) |  |  |
| **type** | [**CashbookEntryType**](CashbookEntryType.md) |  | [optional] |
| **entity_name** | **String** | Entity name. | [optional] |
| **document** | [**CashbookEntryDataDocument**](CashbookEntryDataDocument.md) |  | [optional] |
| **amount_out** | **Float** | Total amount out. | [optional] |
| **payment_account_out** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **amount_in** | **Float** | Total amount in. | [optional] |
| **payment_account_in** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |

