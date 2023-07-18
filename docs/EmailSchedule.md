# FattureInCloud_Ruby_Sdk::EmailSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | Email sender id [required if **sender_email** is not specified] | [optional] |
| **sender_email** | **String** | Email sender address [required if **sender_id** is not specified] | [optional] |
| **recipient_email** | **String** | Email recipient emails [comma separated] | [optional] |
| **subject** | **String** | Email subject | [optional] |
| **body** | **String** | Email body [HTML Escaped] [max size 50KiB] | [optional] |
| **include** | [**EmailScheduleInclude**](EmailScheduleInclude.md) |  | [optional] |
| **attach_pdf** | **Boolean** | Attach the pdf of the document | [optional] |
| **send_copy** | **Boolean** | Send a copy of the email to the **cc_email** specified by **Get email data** | [optional] |

