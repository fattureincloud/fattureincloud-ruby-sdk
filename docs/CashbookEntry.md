# FattureInCloud_Ruby_Sdk::CashbookEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Cashbook id | [optional] |
| **date** | **Date** | Cashbook date | [optional] |
| **description** | **String** | Cashbook description | [optional] |
| **kind** | [**CashbookEntryKind**](CashbookEntryKind.md) |  | [optional] |
| **type** | [**CashbookEntryType**](CashbookEntryType.md) |  | [optional] |
| **entity_name** | **String** | Cashbook entity name | [optional] |
| **document** | [**CashbookEntryDocument**](CashbookEntryDocument.md) |  | [optional] |
| **amount_in** | **Float** | [Only for cashbook entry in] Cashbook total amount in | [optional] |
| **payment_account_in** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |
| **amount_out** | **Float** | [Only for cashbook entry out] Cashbook total amount out | [optional] |
| **payment_account_out** | [**PaymentAccount**](PaymentAccount.md) |  | [optional] |

