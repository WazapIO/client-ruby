# OpenapiClient::MessageSendingApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**instances_instance_key_business_catalog_get**](MessageSendingApi.md#instances_instance_key_business_catalog_get) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog. |
| [**instances_instance_key_send_audio_post**](MessageSendingApi.md#instances_instance_key_send_audio_post) | **POST** /instances/{instance_key}/send/audio | Send raw audio. |
| [**instances_instance_key_send_button_media_post**](MessageSendingApi.md#instances_instance_key_send_button_media_post) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header. |
| [**instances_instance_key_send_buttons_post**](MessageSendingApi.md#instances_instance_key_send_buttons_post) | **POST** /instances/{instance_key}/send/buttons | Send a button message. |
| [**instances_instance_key_send_contact_post**](MessageSendingApi.md#instances_instance_key_send_contact_post) | **POST** /instances/{instance_key}/send/contact | Send a contact message. |
| [**instances_instance_key_send_document_post**](MessageSendingApi.md#instances_instance_key_send_document_post) | **POST** /instances/{instance_key}/send/document | Send raw document. |
| [**instances_instance_key_send_image_post**](MessageSendingApi.md#instances_instance_key_send_image_post) | **POST** /instances/{instance_key}/send/image | Send raw image. |
| [**instances_instance_key_send_list_post**](MessageSendingApi.md#instances_instance_key_send_list_post) | **POST** /instances/{instance_key}/send/list | Send a List message. |
| [**instances_instance_key_send_location_post**](MessageSendingApi.md#instances_instance_key_send_location_post) | **POST** /instances/{instance_key}/send/location | Send a location message. |
| [**instances_instance_key_send_media_post**](MessageSendingApi.md#instances_instance_key_send_media_post) | **POST** /instances/{instance_key}/send/media | Send a media message. |
| [**instances_instance_key_send_poll_post**](MessageSendingApi.md#instances_instance_key_send_poll_post) | **POST** /instances/{instance_key}/send/poll | Send a Poll message with media. |
| [**instances_instance_key_send_template_media_post**](MessageSendingApi.md#instances_instance_key_send_template_media_post) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media. |
| [**instances_instance_key_send_template_post**](MessageSendingApi.md#instances_instance_key_send_template_post) | **POST** /instances/{instance_key}/send/template | Send a template message. |
| [**instances_instance_key_send_text_post**](MessageSendingApi.md#instances_instance_key_send_text_post) | **POST** /instances/{instance_key}/send/text | Send a text message. |
| [**instances_instance_key_send_upload_post**](MessageSendingApi.md#instances_instance_key_send_upload_post) | **POST** /instances/{instance_key}/send/upload | Upload media. |
| [**instances_instance_key_send_video_post**](MessageSendingApi.md#instances_instance_key_send_video_post) | **POST** /instances/{instance_key}/send/video | Send raw video. |


## instances_instance_key_business_catalog_get

> <MainAPIResponse> instances_instance_key_business_catalog_get(instance_key)

Fetches the catlog.

Gets list of all products registered by you.

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

begin
  # Fetches the catlog.
  result = api_instance.instances_instance_key_business_catalog_get(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_business_catalog_get: #{e}"
end
```

#### Using the instances_instance_key_business_catalog_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_business_catalog_get_with_http_info(instance_key)

```ruby
begin
  # Fetches the catlog.
  data, status_code, headers = api_instance.instances_instance_key_business_catalog_get_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_business_catalog_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_send_audio_post

> <MainAPIResponse> instances_instance_key_send_audio_post(instance_key, to, instances_instance_key_send_audio_post_request, opts)

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
instances_instance_key_send_audio_post_request = OpenapiClient::InstancesInstanceKeySendAudioPostRequest.new({file: File.new('/path/to/some/file')}) # InstancesInstanceKeySendAudioPostRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw audio.
  result = api_instance.instances_instance_key_send_audio_post(instance_key, to, instances_instance_key_send_audio_post_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_audio_post: #{e}"
end
```

#### Using the instances_instance_key_send_audio_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_audio_post_with_http_info(instance_key, to, instances_instance_key_send_audio_post_request, opts)

```ruby
begin
  # Send raw audio.
  data, status_code, headers = api_instance.instances_instance_key_send_audio_post_with_http_info(instance_key, to, instances_instance_key_send_audio_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_audio_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **instances_instance_key_send_audio_post_request** | [**InstancesInstanceKeySendAudioPostRequest**](InstancesInstanceKeySendAudioPostRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_button_media_post

> <MainAPIResponse> instances_instance_key_send_button_media_post(instance_key, data)

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
data = OpenapiClient::StructsButtonMessageWithMediaPayload.new # StructsButtonMessageWithMediaPayload | Message data

begin
  # Send a button message with a media header.
  result = api_instance.instances_instance_key_send_button_media_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_button_media_post: #{e}"
end
```

#### Using the instances_instance_key_send_button_media_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_button_media_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a button message with a media header.
  data, status_code, headers = api_instance.instances_instance_key_send_button_media_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_button_media_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsButtonMessageWithMediaPayload**](StructsButtonMessageWithMediaPayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_buttons_post

> <MainAPIResponse> instances_instance_key_send_buttons_post(instance_key, data)

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
data = OpenapiClient::StructsButtonMessagePayload.new # StructsButtonMessagePayload | Message data

begin
  # Send a button message.
  result = api_instance.instances_instance_key_send_buttons_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_buttons_post: #{e}"
end
```

#### Using the instances_instance_key_send_buttons_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_buttons_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a button message.
  data, status_code, headers = api_instance.instances_instance_key_send_buttons_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_buttons_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsButtonMessagePayload**](StructsButtonMessagePayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_contact_post

> <MainAPIResponse> instances_instance_key_send_contact_post(instance_key, data)

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
data = OpenapiClient::StructsContactMessagePayload.new({to: 'to_example', vcard: OpenapiClient::StructsContactMessagePayloadVcard.new}) # StructsContactMessagePayload | Message data

begin
  # Send a contact message.
  result = api_instance.instances_instance_key_send_contact_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_contact_post: #{e}"
end
```

#### Using the instances_instance_key_send_contact_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_contact_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a contact message.
  data, status_code, headers = api_instance.instances_instance_key_send_contact_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_contact_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsContactMessagePayload**](StructsContactMessagePayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_document_post

> <MainAPIResponse> instances_instance_key_send_document_post(instance_key, to, instances_instance_key_send_document_post_request, opts)

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
instances_instance_key_send_document_post_request = OpenapiClient::InstancesInstanceKeySendDocumentPostRequest.new({file: File.new('/path/to/some/file')}) # InstancesInstanceKeySendDocumentPostRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw document.
  result = api_instance.instances_instance_key_send_document_post(instance_key, to, instances_instance_key_send_document_post_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_document_post: #{e}"
end
```

#### Using the instances_instance_key_send_document_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_document_post_with_http_info(instance_key, to, instances_instance_key_send_document_post_request, opts)

```ruby
begin
  # Send raw document.
  data, status_code, headers = api_instance.instances_instance_key_send_document_post_with_http_info(instance_key, to, instances_instance_key_send_document_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_document_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **instances_instance_key_send_document_post_request** | [**InstancesInstanceKeySendDocumentPostRequest**](InstancesInstanceKeySendDocumentPostRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_image_post

> <MainAPIResponse> instances_instance_key_send_image_post(instance_key, to, instances_instance_key_send_image_post_request, opts)

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
instances_instance_key_send_image_post_request = OpenapiClient::InstancesInstanceKeySendImagePostRequest.new({file: File.new('/path/to/some/file')}) # InstancesInstanceKeySendImagePostRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw image.
  result = api_instance.instances_instance_key_send_image_post(instance_key, to, instances_instance_key_send_image_post_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_image_post: #{e}"
end
```

#### Using the instances_instance_key_send_image_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_image_post_with_http_info(instance_key, to, instances_instance_key_send_image_post_request, opts)

```ruby
begin
  # Send raw image.
  data, status_code, headers = api_instance.instances_instance_key_send_image_post_with_http_info(instance_key, to, instances_instance_key_send_image_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_image_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **instances_instance_key_send_image_post_request** | [**InstancesInstanceKeySendImagePostRequest**](InstancesInstanceKeySendImagePostRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_list_post

> <MainAPIResponse> instances_instance_key_send_list_post(instance_key, data)

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
data = OpenapiClient::StructsListMessagePayload.new({sections: [OpenapiClient::StructsListSection.new({rows: [OpenapiClient::StructsListItem.new({title: 'title_example'})], title: 'title_example'})], to: 'to_example'}) # StructsListMessagePayload | Message data

begin
  # Send a List message.
  result = api_instance.instances_instance_key_send_list_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_list_post: #{e}"
end
```

#### Using the instances_instance_key_send_list_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_list_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a List message.
  data, status_code, headers = api_instance.instances_instance_key_send_list_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_list_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsListMessagePayload**](StructsListMessagePayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_location_post

> <MainAPIResponse> instances_instance_key_send_location_post(instance_key, data)

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
data = OpenapiClient::StructsLocationMessagePayload.new({location: OpenapiClient::StructsLocationMessagePayloadLocation.new({latitude: 3.56, longitude: 3.56, name: 'name_example'}), to: 'to_example'}) # StructsLocationMessagePayload | Message data

begin
  # Send a location message.
  result = api_instance.instances_instance_key_send_location_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_location_post: #{e}"
end
```

#### Using the instances_instance_key_send_location_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_location_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a location message.
  data, status_code, headers = api_instance.instances_instance_key_send_location_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_location_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsLocationMessagePayload**](StructsLocationMessagePayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_media_post

> <MainAPIResponse> instances_instance_key_send_media_post(instance_key, data)

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
data = OpenapiClient::StructsSendMediaPayload.new({media_data: OpenapiClient::StructsFileUpload.new({direct_path: 'direct_path_example', file_enc_sha256: [37], file_length: 37, file_sha256: [37], media_key: [37], mime_type: 'mime_type_example', url: 'url_example'}), media_type: 'media_type_example', to: 'to_example'}) # StructsSendMediaPayload | Message data

begin
  # Send a media message.
  result = api_instance.instances_instance_key_send_media_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_media_post: #{e}"
end
```

#### Using the instances_instance_key_send_media_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_media_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a media message.
  data, status_code, headers = api_instance.instances_instance_key_send_media_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_media_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsSendMediaPayload**](StructsSendMediaPayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_poll_post

> <MainAPIResponse> instances_instance_key_send_poll_post(instance_key, data)

Send a Poll message with media.

Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.

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
data = OpenapiClient::StructsPollMessagePayload.new({options: ['options_example'], selectable_options_count: 37, title: 'title_example', to: 'to_example'}) # StructsPollMessagePayload | Message data

begin
  # Send a Poll message with media.
  result = api_instance.instances_instance_key_send_poll_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_poll_post: #{e}"
end
```

#### Using the instances_instance_key_send_poll_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_poll_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a Poll message with media.
  data, status_code, headers = api_instance.instances_instance_key_send_poll_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_poll_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsPollMessagePayload**](StructsPollMessagePayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_template_media_post

> <MainAPIResponse> instances_instance_key_send_template_media_post(instance_key, data)

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
data = OpenapiClient::StructsTemplateButtonWithMediaPayload.new({buttons: [OpenapiClient::StructsTemplateButton.new({title: 'title_example', type: 'type_example'})], media: OpenapiClient::StructsFileUpload.new({direct_path: 'direct_path_example', file_enc_sha256: [37], file_length: 37, file_sha256: [37], media_key: [37], mime_type: 'mime_type_example', url: 'url_example'}), to: 'to_example'}) # StructsTemplateButtonWithMediaPayload | Message data

begin
  # Send a template message with media.
  result = api_instance.instances_instance_key_send_template_media_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_template_media_post: #{e}"
end
```

#### Using the instances_instance_key_send_template_media_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_template_media_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a template message with media.
  data, status_code, headers = api_instance.instances_instance_key_send_template_media_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_template_media_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsTemplateButtonWithMediaPayload**](StructsTemplateButtonWithMediaPayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_template_post

> <MainAPIResponse> instances_instance_key_send_template_post(instance_key, data)

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
data = OpenapiClient::StructsTemplateButtonPayload.new({buttons: [OpenapiClient::StructsTemplateButton.new({title: 'title_example', type: 'type_example'})], to: 'to_example'}) # StructsTemplateButtonPayload | Message data

begin
  # Send a template message.
  result = api_instance.instances_instance_key_send_template_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_template_post: #{e}"
end
```

#### Using the instances_instance_key_send_template_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_template_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a template message.
  data, status_code, headers = api_instance.instances_instance_key_send_template_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_template_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsTemplateButtonPayload**](StructsTemplateButtonPayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_text_post

> <MainAPIResponse> instances_instance_key_send_text_post(instance_key, data)

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
data = OpenapiClient::StructsTextMessage.new({text: 'text_example', to: 'to_example'}) # StructsTextMessage | Message data

begin
  # Send a text message.
  result = api_instance.instances_instance_key_send_text_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_text_post: #{e}"
end
```

#### Using the instances_instance_key_send_text_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_text_post_with_http_info(instance_key, data)

```ruby
begin
  # Send a text message.
  data, status_code, headers = api_instance.instances_instance_key_send_text_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_text_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsTextMessage**](StructsTextMessage.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_upload_post

> <MainAPIResponse> instances_instance_key_send_upload_post(instance_key, type, instances_instance_key_send_upload_post_request)

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
instances_instance_key_send_upload_post_request = OpenapiClient::InstancesInstanceKeySendUploadPostRequest.new({file: File.new('/path/to/some/file')}) # InstancesInstanceKeySendUploadPostRequest | 

begin
  # Upload media.
  result = api_instance.instances_instance_key_send_upload_post(instance_key, type, instances_instance_key_send_upload_post_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_upload_post: #{e}"
end
```

#### Using the instances_instance_key_send_upload_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_upload_post_with_http_info(instance_key, type, instances_instance_key_send_upload_post_request)

```ruby
begin
  # Upload media.
  data, status_code, headers = api_instance.instances_instance_key_send_upload_post_with_http_info(instance_key, type, instances_instance_key_send_upload_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_upload_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **type** | **String** | Media type |  |
| **instances_instance_key_send_upload_post_request** | [**InstancesInstanceKeySendUploadPostRequest**](InstancesInstanceKeySendUploadPostRequest.md) |  |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_send_video_post

> <MainAPIResponse> instances_instance_key_send_video_post(instance_key, to, instances_instance_key_send_video_post_request, opts)

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
instances_instance_key_send_video_post_request = OpenapiClient::InstancesInstanceKeySendVideoPostRequest.new({file: File.new('/path/to/some/file')}) # InstancesInstanceKeySendVideoPostRequest | 
opts = {
  caption: 'caption_example' # String | Attached caption
}

begin
  # Send raw video.
  result = api_instance.instances_instance_key_send_video_post(instance_key, to, instances_instance_key_send_video_post_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_video_post: #{e}"
end
```

#### Using the instances_instance_key_send_video_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_send_video_post_with_http_info(instance_key, to, instances_instance_key_send_video_post_request, opts)

```ruby
begin
  # Send raw video.
  data, status_code, headers = api_instance.instances_instance_key_send_video_post_with_http_info(instance_key, to, instances_instance_key_send_video_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessageSendingApi->instances_instance_key_send_video_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **to** | **String** | The recipient&#39;s number |  |
| **instances_instance_key_send_video_post_request** | [**InstancesInstanceKeySendVideoPostRequest**](InstancesInstanceKeySendVideoPostRequest.md) |  |  |
| **caption** | **String** | Attached caption | [optional] |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

