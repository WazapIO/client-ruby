# OpenapiClient::MiscellaneousApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**instances_instance_key_misc_profile_pic_get**](MiscellaneousApi.md#instances_instance_key_misc_profile_pic_get) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic. |
| [**instances_instance_key_misc_user_info_post**](MiscellaneousApi.md#instances_instance_key_misc_user_info_post) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info. |


## instances_instance_key_misc_profile_pic_get

> <APIResponse> instances_instance_key_misc_profile_pic_get(instance_key, jid)

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
  result = api_instance.instances_instance_key_misc_profile_pic_get(instance_key, jid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->instances_instance_key_misc_profile_pic_get: #{e}"
end
```

#### Using the instances_instance_key_misc_profile_pic_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> instances_instance_key_misc_profile_pic_get_with_http_info(instance_key, jid)

```ruby
begin
  # Get profile pic.
  data, status_code, headers = api_instance.instances_instance_key_misc_profile_pic_get_with_http_info(instance_key, jid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->instances_instance_key_misc_profile_pic_get_with_http_info: #{e}"
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


## instances_instance_key_misc_user_info_post

> <APIResponse> instances_instance_key_misc_user_info_post(instance_key, data)

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
  result = api_instance.instances_instance_key_misc_user_info_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->instances_instance_key_misc_user_info_post: #{e}"
end
```

#### Using the instances_instance_key_misc_user_info_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> instances_instance_key_misc_user_info_post_with_http_info(instance_key, data)

```ruby
begin
  # Fetches the users info.
  data, status_code, headers = api_instance.instances_instance_key_misc_user_info_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscellaneousApi->instances_instance_key_misc_user_info_post_with_http_info: #{e}"
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

