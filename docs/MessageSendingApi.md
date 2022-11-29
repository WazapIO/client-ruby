# OpenapiClient::MessageSendingApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_audio**](MessageSendingApi.md#send_audio) | **POST** /instances/{instance_key}/send/audio | Send raw audio. |
| [**send_button_message**](MessageSendingApi.md#send_button_message) | **POST** /instances/{instance_key}/send/buttons | Send a button message. |
| [**send_button_with_media**](MessageSendingApi.md#send_button_with_media) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header. |
| [**send_contact**](MessageSendingApi.md#send_contact) | **POST** /instances/{instance_key}/send/contact | Send a contact message. |
| [**send_document**](MessageSendingApi.md#send_document) | **POST** /instances/{instance_key}/send/document | Send raw document. |
| [**send_group_invite**](MessageSendingApi.md#send_group_invite) | **POST** /instances/{instance_key}/send/group-invite | Send a group invite message |
| [**send_image**](MessageSendingApi.md#send_image) | **POST** /instances/{instance_key}/send/image | Send raw image. |
| [**send_list_message**](MessageSendingApi.md#send_list_message) | **POST** /instances/{instance_key}/send/list | Send a List message. |
| [**send_location**](MessageSendingApi.md#send_location) | **POST** /instances/{instance_key}/send/location | Send a location message. |
| [**send_media_message**](MessageSendingApi.md#send_media_message) | **POST** /instances/{instance_key}/send/media | Send a media message. |
| [**send_poll_message**](MessageSendingApi.md#send_poll_message) | **POST** /instances/{instance_key}/send/poll | Send a Poll message. |
| [**send_template**](MessageSendingApi.md#send_template) | **POST** /instances/{instance_key}/send/template | Send a template message. |
| [**send_template_with_media**](MessageSendingApi.md#send_template_with_media) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media. |
| [**send_text_message**](MessageSendingApi.md#send_text_message) | **POST** /instances/{instance_key}/send/text | Send a text message. |
| [**send_video**](MessageSendingApi.md#send_video) | **POST** /instances/{instance_key}/send/video | Send raw video. |
| [**upload_media**](MessageSendingApi.md#upload_media) | **POST** /instances/{instance_key}/send/upload | Upload media. |
| [**upload_media_from_url**](MessageSendingApi.md#upload_media_from_url) | **POST** /instances/{instance_key}/send/upload-url | Upload media from url. |


## send_audio

> <APIResponse> send_audio(instance_key, to, send_audio_request, opts)

Send raw audio.

Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
to = 'to_example' # String | The recipient's number
send_audio_request = OpenapiClient::SendAudioRequest.new({file: File.new('/path/to/some/file')}) # SendAudioRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw audio.
  result = api_instance.send_audio(instance_key, to, send_audio_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_audio: #{e}"
end
```

#### Using the send_audio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_audio_with_http_info(instance_key, to, send_audio_request, opts)

```ruby
begin
  # Send raw audio.
  data, status_code, headers = api_instance.send_audio_with_http_info(instance_key, to, send_audio_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_audio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **send_audio_request** | [**SendAudioRequest**](SendAudioRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_button_message

> <APIResponse> send_button_message(instance_key, data)

Send a button message.

Sends an interactive button message to the given user. Make sure that all the button ids are unique

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::ButtonMessagePayload.new # ButtonMessagePayload | Message data

begin
  # Send a button message.
  result = api_instance.send_button_message(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_button_message: #{e}"
end
```

#### Using the send_button_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_button_message_with_http_info(instance_key, data)

```ruby
begin
  # Send a button message.
  data, status_code, headers = api_instance.send_button_message_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_button_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**ButtonMessagePayload**](ButtonMessagePayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_button_with_media

> <APIResponse> send_button_with_media(instance_key, data)

Send a button message with a media header.

Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::ButtonMessageWithMediaPayload.new # ButtonMessageWithMediaPayload | Message data

begin
  # Send a button message with a media header.
  result = api_instance.send_button_with_media(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_button_with_media: #{e}"
end
```

#### Using the send_button_with_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_button_with_media_with_http_info(instance_key, data)

```ruby
begin
  # Send a button message with a media header.
  data, status_code, headers = api_instance.send_button_with_media_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_button_with_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**ButtonMessageWithMediaPayload**](ButtonMessageWithMediaPayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_contact

> <APIResponse> send_contact(instance_key, data)

Send a contact message.

Sends a contact (vcard) message to the given user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::ContactMessagePayload.new({to: 'to_example', vcard: OpenapiClient::ContactMessagePayloadVcard.new}) # ContactMessagePayload | Message data

begin
  # Send a contact message.
  result = api_instance.send_contact(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_contact: #{e}"
end
```

#### Using the send_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_contact_with_http_info(instance_key, data)

```ruby
begin
  # Send a contact message.
  data, status_code, headers = api_instance.send_contact_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**ContactMessagePayload**](ContactMessagePayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_document

> <APIResponse> send_document(instance_key, to, send_document_request, opts)

Send raw document.

Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
to = 'to_example' # String | The recipient's number
send_document_request = OpenapiClient::SendDocumentRequest.new({file: File.new('/path/to/some/file')}) # SendDocumentRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw document.
  result = api_instance.send_document(instance_key, to, send_document_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_document: #{e}"
end
```

#### Using the send_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_document_with_http_info(instance_key, to, send_document_request, opts)

```ruby
begin
  # Send raw document.
  data, status_code, headers = api_instance.send_document_with_http_info(instance_key, to, send_document_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **send_document_request** | [**SendDocumentRequest**](SendDocumentRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_group_invite

> <APIResponse> send_group_invite(instance_key, data)

Send a group invite message

Sends a group invite message to the specified number. Don't include \"https://chat.whatsapp.com/\" in the invite code.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::GroupInviteMessagePayload.new # GroupInviteMessagePayload | Message data

begin
  # Send a group invite message
  result = api_instance.send_group_invite(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_group_invite: #{e}"
end
```

#### Using the send_group_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_group_invite_with_http_info(instance_key, data)

```ruby
begin
  # Send a group invite message
  data, status_code, headers = api_instance.send_group_invite_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_group_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**GroupInviteMessagePayload**](GroupInviteMessagePayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_image

> <APIResponse> send_image(instance_key, to, update_profile_pic_request, opts)

Send raw image.

Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
to = 'to_example' # String | The recipient's number
update_profile_pic_request = OpenapiClient::UpdateProfilePicRequest.new({file: File.new('/path/to/some/file')}) # UpdateProfilePicRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw image.
  result = api_instance.send_image(instance_key, to, update_profile_pic_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_image: #{e}"
end
```

#### Using the send_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_image_with_http_info(instance_key, to, update_profile_pic_request, opts)

```ruby
begin
  # Send raw image.
  data, status_code, headers = api_instance.send_image_with_http_info(instance_key, to, update_profile_pic_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **update_profile_pic_request** | [**UpdateProfilePicRequest**](UpdateProfilePicRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_list_message

> <APIResponse> send_list_message(instance_key, data)

Send a List message.

Sends an interactive List message to the given user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::ListMessagePayload.new({sections: [OpenapiClient::ListSection.new({rows: [OpenapiClient::ListItem.new({title: 'title_example'})], title: 'title_example'})], to: 'to_example'}) # ListMessagePayload | Message data

begin
  # Send a List message.
  result = api_instance.send_list_message(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_list_message: #{e}"
end
```

#### Using the send_list_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_list_message_with_http_info(instance_key, data)

```ruby
begin
  # Send a List message.
  data, status_code, headers = api_instance.send_list_message_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_list_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**ListMessagePayload**](ListMessagePayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_location

> <APIResponse> send_location(instance_key, data)

Send a location message.

Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::LocationMessagePayload.new({location: OpenapiClient::LocationMessagePayloadLocation.new({latitude: 3.56, longitude: 3.56, name: 'name_example'}), to: 'to_example'}) # LocationMessagePayload | Message data

begin
  # Send a location message.
  result = api_instance.send_location(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_location: #{e}"
end
```

#### Using the send_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_location_with_http_info(instance_key, data)

```ruby
begin
  # Send a location message.
  data, status_code, headers = api_instance.send_location_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**LocationMessagePayload**](LocationMessagePayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_media_message

> <APIResponse> send_media_message(instance_key, data)

Send a media message.

Sends a media message to the given user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::SendMediaPayload.new({media_data: OpenapiClient::FileUpload.new({direct_path: 'direct_path_example', file_enc_sha256: [37], file_length: 37, file_sha256: [37], media_key: [37], mime_type: 'mime_type_example', url: 'url_example'}), media_type: 'media_type_example', to: 'to_example'}) # SendMediaPayload | Message data

begin
  # Send a media message.
  result = api_instance.send_media_message(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_media_message: #{e}"
end
```

#### Using the send_media_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_media_message_with_http_info(instance_key, data)

```ruby
begin
  # Send a media message.
  data, status_code, headers = api_instance.send_media_message_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_media_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**SendMediaPayload**](SendMediaPayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_poll_message

> <APIResponse> send_poll_message(instance_key, data)

Send a Poll message.

Sends an interactive poll message to the given user. The poll message is a new feature that is currently in beta.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::PollMessagePayload.new({options: ['options_example'], selectable_options_count: 37, title: 'title_example', to: 'to_example'}) # PollMessagePayload | Message data

begin
  # Send a Poll message.
  result = api_instance.send_poll_message(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_poll_message: #{e}"
end
```

#### Using the send_poll_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_poll_message_with_http_info(instance_key, data)

```ruby
begin
  # Send a Poll message.
  data, status_code, headers = api_instance.send_poll_message_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_poll_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**PollMessagePayload**](PollMessagePayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_template

> <APIResponse> send_template(instance_key, data)

Send a template message.

Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::TemplateButtonPayload.new({buttons: [OpenapiClient::TemplateButton.new({title: 'title_example', type: 'type_example'})], to: 'to_example'}) # TemplateButtonPayload | Message data

begin
  # Send a template message.
  result = api_instance.send_template(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_template: #{e}"
end
```

#### Using the send_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_template_with_http_info(instance_key, data)

```ruby
begin
  # Send a template message.
  data, status_code, headers = api_instance.send_template_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**TemplateButtonPayload**](TemplateButtonPayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_template_with_media

> <APIResponse> send_template_with_media(instance_key, data)

Send a template message with media.

Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::TemplateButtonWithMediaPayload.new({buttons: [OpenapiClient::TemplateButton.new({title: 'title_example', type: 'type_example'})], media: OpenapiClient::FileUpload.new({direct_path: 'direct_path_example', file_enc_sha256: [37], file_length: 37, file_sha256: [37], media_key: [37], mime_type: 'mime_type_example', url: 'url_example'}), to: 'to_example'}) # TemplateButtonWithMediaPayload | Message data

begin
  # Send a template message with media.
  result = api_instance.send_template_with_media(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_template_with_media: #{e}"
end
```

#### Using the send_template_with_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_template_with_media_with_http_info(instance_key, data)

```ruby
begin
  # Send a template message with media.
  data, status_code, headers = api_instance.send_template_with_media_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_template_with_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**TemplateButtonWithMediaPayload**](TemplateButtonWithMediaPayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_text_message

> <APIResponse> send_text_message(instance_key, data)

Send a text message.

Sends a text message to the given user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::TextMessage.new({text: 'text_example', to: 'to_example'}) # TextMessage | Message data

begin
  # Send a text message.
  result = api_instance.send_text_message(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_text_message: #{e}"
end
```

#### Using the send_text_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_text_message_with_http_info(instance_key, data)

```ruby
begin
  # Send a text message.
  data, status_code, headers = api_instance.send_text_message_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_text_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**TextMessage**](TextMessage.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_video

> <APIResponse> send_video(instance_key, to, send_video_request, opts)

Send raw video.

Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
to = 'to_example' # String | The recipient's number
send_video_request = OpenapiClient::SendVideoRequest.new({file: File.new('/path/to/some/file')}) # SendVideoRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw video.
  result = api_instance.send_video(instance_key, to, send_video_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_video: #{e}"
end
```

#### Using the send_video_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_video_with_http_info(instance_key, to, send_video_request, opts)

```ruby
begin
  # Send raw video.
  data, status_code, headers = api_instance.send_video_with_http_info(instance_key, to, send_video_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->send_video_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **send_video_request** | [**SendVideoRequest**](SendVideoRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## upload_media

> <APIResponse> upload_media(instance_key, type, upload_media_request)

Upload media.

Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
type = 'image' # String | Media type
upload_media_request = OpenapiClient::UploadMediaRequest.new({file: File.new('/path/to/some/file')}) # UploadMediaRequest | 

begin
  # Upload media.
  result = api_instance.upload_media(instance_key, type, upload_media_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->upload_media: #{e}"
end
```

#### Using the upload_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> upload_media_with_http_info(instance_key, type, upload_media_request)

```ruby
begin
  # Upload media.
  data, status_code, headers = api_instance.upload_media_with_http_info(instance_key, type, upload_media_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->upload_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **type** | **String** | Media type |  |
| **upload_media_request** | [**UploadMediaRequest**](UploadMediaRequest.md) |  |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## upload_media_from_url

> <APIResponse> upload_media_from_url(instance_key, type, data)

Upload media from url.

Uploads media from a url to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::MessageSendingApi.new
instance_key = 'instance_key_example' # String | Instance key
type = 'image' # String | Media type
data = OpenapiClient::UrlMediaUploadPayload.new # UrlMediaUploadPayload | Media data

begin
  # Upload media from url.
  result = api_instance.upload_media_from_url(instance_key, type, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->upload_media_from_url: #{e}"
end
```

#### Using the upload_media_from_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> upload_media_from_url_with_http_info(instance_key, type, data)

```ruby
begin
  # Upload media from url.
  data, status_code, headers = api_instance.upload_media_from_url_with_http_info(instance_key, type, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->upload_media_from_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **type** | **String** | Media type |  |
| **data** | [**UrlMediaUploadPayload**](UrlMediaUploadPayload.md) | Media data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

