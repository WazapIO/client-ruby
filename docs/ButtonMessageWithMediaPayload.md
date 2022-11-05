# OpenapiClient::ButtonMessageWithMediaPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buttons** | [**Array&lt;ReplyButton&gt;**](ReplyButton.md) |  | [optional] |
| **footer_text** | **String** |  | [optional] |
| **media_data** | [**FileUpload**](FileUpload.md) |  | [optional] |
| **text** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ButtonMessageWithMediaPayload.new(
  buttons: null,
  footer_text: null,
  media_data: null,
  text: null,
  to: null
)
```

