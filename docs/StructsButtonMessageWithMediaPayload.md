# OpenapiClient::StructsButtonMessageWithMediaPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buttons** | [**Array&lt;StructsReplyButton&gt;**](StructsReplyButton.md) |  | [optional] |
| **footer_text** | **String** |  | [optional] |
| **media_data** | [**StructsFileUpload**](StructsFileUpload.md) |  | [optional] |
| **text** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StructsButtonMessageWithMediaPayload.new(
  buttons: null,
  footer_text: null,
  media_data: null,
  text: null,
  to: null
)
```

