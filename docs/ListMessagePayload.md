# OpenapiClient::ListMessagePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **button_text** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **multi_select** | **Boolean** |  | [optional] |
| **sections** | [**Array&lt;ListSection&gt;**](ListSection.md) |  |  |
| **text** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **to** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListMessagePayload.new(
  button_text: null,
  description: null,
  multi_select: null,
  sections: null,
  text: null,
  title: null,
  to: null
)
```

