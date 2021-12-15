# FattureInCloud::Ruby::Sdk::IssuedDocumentExtraData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show_sofort_button** | **Boolean** |  | [optional] |
| **multifatture_sent** | **Integer** |  | [optional] |
| **ts_communication** | **Boolean** |  | [optional] |
| **ts_flag_tipo_spesa** | **Float** | 1 &#x3D;&gt; TK (Ticket di pronto soccorso); 2 &#x3D;&gt; SR (Visita in intramoenia) | [optional] |
| **ts_pagamento_tracciato** | **Boolean** |  | [optional] |
| **ts_tipo_spesa** | **String** | Can be [ &#39;TK&#39;, &#39;FC&#39;, &#39;FV&#39;, &#39;SV&#39;, &#39;SP&#39;, &#39;AD&#39;, &#39;AS&#39;, &#39;SR&#39;, &#39;CT&#39;, &#39;PI&#39;, &#39;IC&#39;, &#39;AA&#39; ]. Refer to the technical specifications to learn more. | [optional] |
| **ts_opposizione** | **Boolean** |  | [optional] |
| **ts_status** | **Integer** |  | [optional] |
| **ts_file_id** | **String** |  | [optional] |
| **ts_sent_date** | **Date** |  | [optional] |
| **ts_full_amount** | **Boolean** |  | [optional] |
| **imported_by** | **String** |  | [optional] |
| **ts_single_sending** | **Boolean** |  | [optional] |

## Example

```ruby
require 'fattureincloud-ruby-sdk'

instance = FattureInCloud::Ruby::Sdk::IssuedDocumentExtraData.new(
  show_sofort_button: null,
  multifatture_sent: null,
  ts_communication: null,
  ts_flag_tipo_spesa: null,
  ts_pagamento_tracciato: null,
  ts_tipo_spesa: null,
  ts_opposizione: null,
  ts_status: null,
  ts_file_id: null,
  ts_sent_date: null,
  ts_full_amount: null,
  imported_by: null,
  ts_single_sending: null
)
```

