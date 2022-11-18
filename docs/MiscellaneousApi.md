# OpenapiClient::MiscellaneousApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_media**](MiscellaneousApi.md#download_media) | **POST** /instances/{instance_key}/misc/download | Download media |
| [**get_profile_pic**](MiscellaneousApi.md#get_profile_pic) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic. |
| [**get_users_info**](MiscellaneousApi.md#get_users_info) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info. |
| [**set_chat_presence**](MiscellaneousApi.md#set_chat_presence) | **POST** /instances/{instance_key}/misc/chat-presence | Set chat presence |
| [**update_profile_pic**](MiscellaneousApi.md#update_profile_pic) | **PUT** /instances/{instance_key}/misc/profile-pic | Update profile picture |


## download_media

> <APIResponse> download_media(instance_key, file_type, data, opts)

Download media

Downloads the media from the given media keys.

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

api_instance = OpenapiClient::MiscellaneousApi.new
instance_key = 'instance_key_example' # String | Instance key
file_type = 'image' # String | File type
data = OpenapiClient::FileUpload.new({direct_path: 'direct_path_example', file_enc_sha256: [37], file_length: 37, file_sha256: [37], media_key: [37], mime_type: 'mime_type_example', url: 'url_example'}) # FileUpload | Media data
opts = {
  response_type: 'response_type_example' # String | Response type (file, base64)
}

begin
  # Download media
  result = api_instance.download_media(instance_key, file_type, data, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->download_media: #{e}"
end
```

#### Using the download_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> download_media_with_http_info(instance_key, file_type, data, opts)

```ruby
begin
  # Download media
  data, status_code, headers = api_instance.download_media_with_http_info(instance_key, file_type, data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->download_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **file_type** | **String** | File type |  |
| **data** | [**FileUpload**](FileUpload.md) | Media data |  |
| **response_type** | **String** | Response type (file, base64) | [optional] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## get_profile_pic

> <APIResponse> get_profile_pic(instance_key, jid)

Get profile pic.

Returns the profile pic of the given user.

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

api_instance = OpenapiClient::MiscellaneousApi.new
instance_key = 'instance_key_example' # String | Instance key
jid = 'jid_example' # String | JID

begin
  # Get profile pic.
  result = api_instance.get_profile_pic(instance_key, jid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->get_profile_pic: #{e}"
end
```

#### Using the get_profile_pic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_profile_pic_with_http_info(instance_key, jid)

```ruby
begin
  # Get profile pic.
  data, status_code, headers = api_instance.get_profile_pic_with_http_info(instance_key, jid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->get_profile_pic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **jid** | **String** | JID |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_users_info

> <APIResponse> get_users_info(instance_key, data)

Fetches the users info.

Gets the user info for the given user ids. This does not checks if user is registered or not

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

api_instance = OpenapiClient::MiscellaneousApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::UserInfoPayload.new({user_ids: ['user_ids_example']}) # UserInfoPayload | Data

begin
  # Fetches the users info.
  result = api_instance.get_users_info(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->get_users_info: #{e}"
end
```

#### Using the get_users_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_users_info_with_http_info(instance_key, data)

```ruby
begin
  # Fetches the users info.
  data, status_code, headers = api_instance.get_users_info_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->get_users_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**UserInfoPayload**](UserInfoPayload.md) | Data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## set_chat_presence

> <APIResponse> set_chat_presence(instance_key, jid, presence)

Set chat presence

Sets the presence of the given chat. (Typing, Recording, Paused) Options: typing, recording, paused

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

api_instance = OpenapiClient::MiscellaneousApi.new
instance_key = 'instance_key_example' # String | Instance key
jid = 'jid_example' # String | JID
presence = 'presence_example' # String | Presence

begin
  # Set chat presence
  result = api_instance.set_chat_presence(instance_key, jid, presence)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->set_chat_presence: #{e}"
end
```

#### Using the set_chat_presence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> set_chat_presence_with_http_info(instance_key, jid, presence)

```ruby
begin
  # Set chat presence
  data, status_code, headers = api_instance.set_chat_presence_with_http_info(instance_key, jid, presence)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->set_chat_presence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **jid** | **String** | JID |  |
| **presence** | **String** | Presence |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## update_profile_pic

> <APIResponse> update_profile_pic(instance_key, update_profile_pic_request)

Update profile picture

Changes the profile pic of the current logged in user.

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

api_instance = OpenapiClient::MiscellaneousApi.new
instance_key = 'instance_key_example' # String | Instance key
update_profile_pic_request = OpenapiClient::UpdateProfilePicRequest.new({file: File.new('/path/to/some/file')}) # UpdateProfilePicRequest | 

begin
  # Update profile picture
  result = api_instance.update_profile_pic(instance_key, update_profile_pic_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->update_profile_pic: #{e}"
end
```

#### Using the update_profile_pic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> update_profile_pic_with_http_info(instance_key, update_profile_pic_request)

```ruby
begin
  # Update profile picture
  data, status_code, headers = api_instance.update_profile_pic_with_http_info(instance_key, update_profile_pic_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->update_profile_pic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **update_profile_pic_request** | [**UpdateProfilePicRequest**](UpdateProfilePicRequest.md) |  |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

