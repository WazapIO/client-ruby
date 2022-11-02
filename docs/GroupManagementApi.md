# OpenapiClient::GroupManagementApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**instances_instance_key_groups_admin_get**](GroupManagementApi.md#instances_instance_key_groups_admin_get) | **GET** /instances/{instance_key}/groups/admin | Get admin groupss. |
| [**instances_instance_key_groups_create_post**](GroupManagementApi.md#instances_instance_key_groups_create_post) | **POST** /instances/{instance_key}/groups/create | Create group. |
| [**instances_instance_key_groups_get**](GroupManagementApi.md#instances_instance_key_groups_get) | **GET** /instances/{instance_key}/groups/ | Get all groups. |
| [**instances_instance_key_groups_group_id_announce_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_announce_put) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce. |
| [**instances_instance_key_groups_group_id_delete**](GroupManagementApi.md#instances_instance_key_groups_group_id_delete) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group. |
| [**instances_instance_key_groups_group_id_description_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_description_put) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description. |
| [**instances_instance_key_groups_group_id_get**](GroupManagementApi.md#instances_instance_key_groups_group_id_get) | **GET** /instances/{instance_key}/groups/{group_id} | Get group. |
| [**instances_instance_key_groups_group_id_invite_code_get**](GroupManagementApi.md#instances_instance_key_groups_group_id_invite_code_get) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code. |
| [**instances_instance_key_groups_group_id_lock_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_lock_put) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked. |
| [**instances_instance_key_groups_group_id_name_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_name_put) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name. |
| [**instances_instance_key_groups_group_id_participants_add_post**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_add_post) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant. |
| [**instances_instance_key_groups_group_id_participants_demote_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_demote_put) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant. |
| [**instances_instance_key_groups_group_id_participants_promote_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_promote_put) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant. |
| [**instances_instance_key_groups_group_id_participants_remove_delete**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_remove_delete) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant. |
| [**instances_instance_key_groups_group_id_profile_pic_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_profile_pic_put) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture. |
| [**instances_instance_key_groups_invite_info_get**](GroupManagementApi.md#instances_instance_key_groups_invite_info_get) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link. |


## instances_instance_key_groups_admin_get

> <MainAPIResponse> instances_instance_key_groups_admin_get(instance_key)

Get admin groupss.

Returns list of all groups in which you are admin.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Get admin groupss.
  result = api_instance.instances_instance_key_groups_admin_get(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_admin_get: #{e}"
end
```

#### Using the instances_instance_key_groups_admin_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_admin_get_with_http_info(instance_key)

```ruby
begin
  # Get admin groupss.
  data, status_code, headers = api_instance.instances_instance_key_groups_admin_get_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_admin_get_with_http_info: #{e}"
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


## instances_instance_key_groups_create_post

> <MainAPIResponse> instances_instance_key_groups_create_post(instance_key, data)

Create group.

Creates a group with the participant data. The creator is automatically added to the group.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::StructsGroupCreatePayload.new # StructsGroupCreatePayload | Group create payload

begin
  # Create group.
  result = api_instance.instances_instance_key_groups_create_post(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_create_post: #{e}"
end
```

#### Using the instances_instance_key_groups_create_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_create_post_with_http_info(instance_key, data)

```ruby
begin
  # Create group.
  data, status_code, headers = api_instance.instances_instance_key_groups_create_post_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_create_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsGroupCreatePayload**](StructsGroupCreatePayload.md) | Group create payload |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_get

> <MainAPIResponse> instances_instance_key_groups_get(instance_key, opts)

Get all groups.

Returns list of all groups with participants data. Set include_participants to false to exclude participants data.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
opts = {
  include_participants: 'false' # String | Include participants data
}

begin
  # Get all groups.
  result = api_instance.instances_instance_key_groups_get(instance_key, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_get: #{e}"
end
```

#### Using the instances_instance_key_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_get_with_http_info(instance_key, opts)

```ruby
begin
  # Get all groups.
  data, status_code, headers = api_instance.instances_instance_key_groups_get_with_http_info(instance_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **include_participants** | **String** | Include participants data | [optional][default to &#39;true&#39;] |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_groups_group_id_announce_put

> <MainAPIResponse> instances_instance_key_groups_group_id_announce_put(instance_key, announce, group_id)

Set group announce.

Set if non-admins are allowed to send messages in groups

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
announce = true # Boolean | Announce status
group_id = 'group_id_example' # String | Group id of the group

begin
  # Set group announce.
  result = api_instance.instances_instance_key_groups_group_id_announce_put(instance_key, announce, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_announce_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_announce_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_announce_put_with_http_info(instance_key, announce, group_id)

```ruby
begin
  # Set group announce.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_announce_put_with_http_info(instance_key, announce, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_announce_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **announce** | **Boolean** | Announce status | [default to false] |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_groups_group_id_delete

> <MainAPIResponse> instances_instance_key_groups_group_id_delete(instance_key, group_id)

Leaves the group.

Leaves the specified group.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group

begin
  # Leaves the group.
  result = api_instance.instances_instance_key_groups_group_id_delete(instance_key, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_delete: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_delete_with_http_info(instance_key, group_id)

```ruby
begin
  # Leaves the group.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_delete_with_http_info(instance_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_groups_group_id_description_put

> <MainAPIResponse> instances_instance_key_groups_group_id_description_put(instance_key, group_id, data)

Set group description.

Changes the group description

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
data = OpenapiClient::StructsGroupUpdateDescriptionPayload.new # StructsGroupUpdateDescriptionPayload | Group description data

begin
  # Set group description.
  result = api_instance.instances_instance_key_groups_group_id_description_put(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_description_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_description_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_description_put_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Set group description.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_description_put_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_description_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**StructsGroupUpdateDescriptionPayload**](StructsGroupUpdateDescriptionPayload.md) | Group description data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_group_id_get

> <MainAPIResponse> instances_instance_key_groups_group_id_get(instance_key, group_id)

Get group.

Fetches the group data.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group

begin
  # Get group.
  result = api_instance.instances_instance_key_groups_group_id_get(instance_key, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_get: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_get_with_http_info(instance_key, group_id)

```ruby
begin
  # Get group.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_get_with_http_info(instance_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_groups_group_id_invite_code_get

> <MainAPIResponse> instances_instance_key_groups_group_id_invite_code_get(instance_key, group_id)

Get group invite code.

Gets the invite code of the group.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group

begin
  # Get group invite code.
  result = api_instance.instances_instance_key_groups_group_id_invite_code_get(instance_key, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_invite_code_get: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_invite_code_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_invite_code_get_with_http_info(instance_key, group_id)

```ruby
begin
  # Get group invite code.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_invite_code_get_with_http_info(instance_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_invite_code_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_groups_group_id_lock_put

> <MainAPIResponse> instances_instance_key_groups_group_id_lock_put(instance_key, locked, group_id)

Set group locked.

Set if non-admins are allowed to change the group dp and other stuff

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
locked = true # Boolean | Locked status
group_id = 'group_id_example' # String | Group id of the group

begin
  # Set group locked.
  result = api_instance.instances_instance_key_groups_group_id_lock_put(instance_key, locked, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_lock_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_lock_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_lock_put_with_http_info(instance_key, locked, group_id)

```ruby
begin
  # Set group locked.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_lock_put_with_http_info(instance_key, locked, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_lock_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **locked** | **Boolean** | Locked status | [default to false] |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_groups_group_id_name_put

> <MainAPIResponse> instances_instance_key_groups_group_id_name_put(instance_key, group_id, data)

Set group name.

Changes the group name. The max limit is 22 chars

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
data = OpenapiClient::StructsGroupUpdateNamePayload.new # StructsGroupUpdateNamePayload | Group name data

begin
  # Set group name.
  result = api_instance.instances_instance_key_groups_group_id_name_put(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_name_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_name_put_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Set group name.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_name_put_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**StructsGroupUpdateNamePayload**](StructsGroupUpdateNamePayload.md) | Group name data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_group_id_participants_add_post

> <MainAPIResponse> instances_instance_key_groups_group_id_participants_add_post(instance_key, group_id, data)

Add participant.

Handles adding participants to a group. You must be admin in the group or the query will fail.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
data = OpenapiClient::StructsGroupUpdateParticipantsPayload.new # StructsGroupUpdateParticipantsPayload | Group update payload

begin
  # Add participant.
  result = api_instance.instances_instance_key_groups_group_id_participants_add_post(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_add_post: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_participants_add_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_participants_add_post_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Add participant.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_participants_add_post_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_add_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_group_id_participants_demote_put

> <MainAPIResponse> instances_instance_key_groups_group_id_participants_demote_put(instance_key, group_id, data)

Demote participant.

Demotes admins in groups. You must be admin in the group or the query will fail.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
data = OpenapiClient::StructsGroupUpdateParticipantsPayload.new # StructsGroupUpdateParticipantsPayload | Group update payload

begin
  # Demote participant.
  result = api_instance.instances_instance_key_groups_group_id_participants_demote_put(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_demote_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_participants_demote_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_participants_demote_put_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Demote participant.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_participants_demote_put_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_demote_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_group_id_participants_promote_put

> <MainAPIResponse> instances_instance_key_groups_group_id_participants_promote_put(instance_key, group_id, data)

Promote participant.

Promotes participants to admin. You must be admin in the group or the query will fail.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
data = OpenapiClient::StructsGroupUpdateParticipantsPayload.new # StructsGroupUpdateParticipantsPayload | Group update payload

begin
  # Promote participant.
  result = api_instance.instances_instance_key_groups_group_id_participants_promote_put(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_promote_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_participants_promote_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_participants_promote_put_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Promote participant.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_participants_promote_put_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_promote_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_group_id_participants_remove_delete

> <MainAPIResponse> instances_instance_key_groups_group_id_participants_remove_delete(instance_key, group_id, data)

Remove participant.

Handles removing participants from a group. You must be admin in the group or the query will fail.

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
data = OpenapiClient::StructsGroupUpdateParticipantsPayload.new # StructsGroupUpdateParticipantsPayload | Group update payload

begin
  # Remove participant.
  result = api_instance.instances_instance_key_groups_group_id_participants_remove_delete(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_remove_delete: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_participants_remove_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_participants_remove_delete_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Remove participant.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_participants_remove_delete_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_remove_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_group_id_profile_pic_put

> <MainAPIResponse> instances_instance_key_groups_group_id_profile_pic_put(instance_key, group_id, instances_instance_key_groups_group_id_profile_pic_put_request)

Set group picture.

Changes the group profile picture. Currently it only seems to accept JPEG images only

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
group_id = 'group_id_example' # String | Group id of the group
instances_instance_key_groups_group_id_profile_pic_put_request = OpenapiClient::InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest.new({file: File.new('/path/to/some/file')}) # InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest | 

begin
  # Set group picture.
  result = api_instance.instances_instance_key_groups_group_id_profile_pic_put(instance_key, group_id, instances_instance_key_groups_group_id_profile_pic_put_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_profile_pic_put: #{e}"
end
```

#### Using the instances_instance_key_groups_group_id_profile_pic_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_group_id_profile_pic_put_with_http_info(instance_key, group_id, instances_instance_key_groups_group_id_profile_pic_put_request)

```ruby
begin
  # Set group picture.
  data, status_code, headers = api_instance.instances_instance_key_groups_group_id_profile_pic_put_with_http_info(instance_key, group_id, instances_instance_key_groups_group_id_profile_pic_put_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_group_id_profile_pic_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **instances_instance_key_groups_group_id_profile_pic_put_request** | [**InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest**](InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest.md) |  |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_instance_key_groups_invite_info_get

> <MainAPIResponse> instances_instance_key_groups_invite_info_get(instance_key, invite_link)

Get group from invite link.

Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}

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

api_instance = OpenapiClient::GroupManagementApi.new
instance_key = 'instance_key_example' # String | Instance key
invite_link = 'invite_link_example' # String | The invite link to check

begin
  # Get group from invite link.
  result = api_instance.instances_instance_key_groups_invite_info_get(instance_key, invite_link)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_invite_info_get: #{e}"
end
```

#### Using the instances_instance_key_groups_invite_info_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_groups_invite_info_get_with_http_info(instance_key, invite_link)

```ruby
begin
  # Get group from invite link.
  data, status_code, headers = api_instance.instances_instance_key_groups_invite_info_get_with_http_info(instance_key, invite_link)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->instances_instance_key_groups_invite_info_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **invite_link** | **String** | The invite link to check |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

