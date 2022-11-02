# OpenapiClient::StructsSendMediaPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **caption** | **String** |  | [optional] |
| **filename** | **String** |  | [optional] |
| **media_data** | [**StructsFileUpload**](StructsFileUpload.md) |  |  |
| **media_type** | **String** |  |  |
| **to** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StructsSendMediaPayload.new(
  caption: null,
  filename: null,
  media_data: null,
  media_type: null,
  to: null
)
```

