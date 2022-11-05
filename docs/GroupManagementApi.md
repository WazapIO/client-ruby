# OpenapiClient::GroupManagementApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_participant**](GroupManagementApi.md#add_participant) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant. |
| [**create_group**](GroupManagementApi.md#create_group) | **POST** /instances/{instance_key}/groups/create | Create group. |
| [**demote_participant**](GroupManagementApi.md#demote_participant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant. |
| [**get_admin_groups**](GroupManagementApi.md#get_admin_groups) | **GET** /instances/{instance_key}/groups/admin | Get admin groups. |
| [**get_all_groups**](GroupManagementApi.md#get_all_groups) | **GET** /instances/{instance_key}/groups/ | Get all groups. |
| [**get_group**](GroupManagementApi.md#get_group) | **GET** /instances/{instance_key}/groups/{group_id} | Get group. |
| [**get_group_from_invite_link**](GroupManagementApi.md#get_group_from_invite_link) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link. |
| [**get_group_invite_code**](GroupManagementApi.md#get_group_invite_code) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code. |
| [**leave_group**](GroupManagementApi.md#leave_group) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group. |
| [**promote_participant**](GroupManagementApi.md#promote_participant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant. |
| [**remove_participant**](GroupManagementApi.md#remove_participant) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant. |
| [**set_group_announce**](GroupManagementApi.md#set_group_announce) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce. |
| [**set_group_description**](GroupManagementApi.md#set_group_description) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description. |
| [**set_group_locked**](GroupManagementApi.md#set_group_locked) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked. |
| [**set_group_name**](GroupManagementApi.md#set_group_name) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name. |
| [**set_group_picture**](GroupManagementApi.md#set_group_picture) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture. |


## add_participant

> <APIResponse> add_participant(instance_key, group_id, data)

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
data = OpenapiClient::GroupUpdateParticipantsPayload.new # GroupUpdateParticipantsPayload | Group update payload

begin
  # Add participant.
  result = api_instance.add_participant(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->add_participant: #{e}"
end
```

#### Using the add_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> add_participant_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Add participant.
  data, status_code, headers = api_instance.add_participant_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->add_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_group

> <APIResponse> create_group(instance_key, data)

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
data = OpenapiClient::GroupCreatePayload.new # GroupCreatePayload | Group create payload

begin
  # Create group.
  result = api_instance.create_group(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> create_group_with_http_info(instance_key, data)

```ruby
begin
  # Create group.
  data, status_code, headers = api_instance.create_group_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**GroupCreatePayload**](GroupCreatePayload.md) | Group create payload |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## demote_participant

> <APIResponse> demote_participant(instance_key, group_id, data)

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
data = OpenapiClient::GroupUpdateParticipantsPayload.new # GroupUpdateParticipantsPayload | Group update payload

begin
  # Demote participant.
  result = api_instance.demote_participant(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->demote_participant: #{e}"
end
```

#### Using the demote_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> demote_participant_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Demote participant.
  data, status_code, headers = api_instance.demote_participant_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->demote_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## get_admin_groups

> <APIResponse> get_admin_groups(instance_key)

Get admin groups.

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
  # Get admin groups.
  result = api_instance.get_admin_groups(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_admin_groups: #{e}"
end
```

#### Using the get_admin_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_admin_groups_with_http_info(instance_key)

```ruby
begin
  # Get admin groups.
  data, status_code, headers = api_instance.get_admin_groups_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_admin_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_all_groups

> <APIResponse> get_all_groups(instance_key, opts)

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
  result = api_instance.get_all_groups(instance_key, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_all_groups: #{e}"
end
```

#### Using the get_all_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_all_groups_with_http_info(instance_key, opts)

```ruby
begin
  # Get all groups.
  data, status_code, headers = api_instance.get_all_groups_with_http_info(instance_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_all_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **include_participants** | **String** | Include participants data | [optional][default to &#39;true&#39;] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_group

> <APIResponse> get_group(instance_key, group_id)

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
  result = api_instance.get_group(instance_key, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_group: #{e}"
end
```

#### Using the get_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_group_with_http_info(instance_key, group_id)

```ruby
begin
  # Get group.
  data, status_code, headers = api_instance.get_group_with_http_info(instance_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_group_from_invite_link

> <APIResponse> get_group_from_invite_link(instance_key, invite_link)

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
  result = api_instance.get_group_from_invite_link(instance_key, invite_link)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_group_from_invite_link: #{e}"
end
```

#### Using the get_group_from_invite_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_group_from_invite_link_with_http_info(instance_key, invite_link)

```ruby
begin
  # Get group from invite link.
  data, status_code, headers = api_instance.get_group_from_invite_link_with_http_info(instance_key, invite_link)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_group_from_invite_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **invite_link** | **String** | The invite link to check |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_group_invite_code

> <APIResponse> get_group_invite_code(instance_key, group_id)

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
  result = api_instance.get_group_invite_code(instance_key, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_group_invite_code: #{e}"
end
```

#### Using the get_group_invite_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_group_invite_code_with_http_info(instance_key, group_id)

```ruby
begin
  # Get group invite code.
  data, status_code, headers = api_instance.get_group_invite_code_with_http_info(instance_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->get_group_invite_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## leave_group

> <APIResponse> leave_group(instance_key, group_id)

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
  result = api_instance.leave_group(instance_key, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->leave_group: #{e}"
end
```

#### Using the leave_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> leave_group_with_http_info(instance_key, group_id)

```ruby
begin
  # Leaves the group.
  data, status_code, headers = api_instance.leave_group_with_http_info(instance_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->leave_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## promote_participant

> <APIResponse> promote_participant(instance_key, group_id, data)

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
data = OpenapiClient::GroupUpdateParticipantsPayload.new # GroupUpdateParticipantsPayload | Group update payload

begin
  # Promote participant.
  result = api_instance.promote_participant(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->promote_participant: #{e}"
end
```

#### Using the promote_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> promote_participant_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Promote participant.
  data, status_code, headers = api_instance.promote_participant_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->promote_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## remove_participant

> <APIResponse> remove_participant(instance_key, group_id, data)

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
data = OpenapiClient::GroupUpdateParticipantsPayload.new # GroupUpdateParticipantsPayload | Group update payload

begin
  # Remove participant.
  result = api_instance.remove_participant(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->remove_participant: #{e}"
end
```

#### Using the remove_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> remove_participant_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Remove participant.
  data, status_code, headers = api_instance.remove_participant_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->remove_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md) | Group update payload |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## set_group_announce

> <APIResponse> set_group_announce(instance_key, announce, group_id)

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
  result = api_instance.set_group_announce(instance_key, announce, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_announce: #{e}"
end
```

#### Using the set_group_announce_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> set_group_announce_with_http_info(instance_key, announce, group_id)

```ruby
begin
  # Set group announce.
  data, status_code, headers = api_instance.set_group_announce_with_http_info(instance_key, announce, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_announce_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **announce** | **Boolean** | Announce status | [default to false] |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## set_group_description

> <APIResponse> set_group_description(instance_key, group_id, data)

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
data = OpenapiClient::GroupUpdateDescriptionPayload.new # GroupUpdateDescriptionPayload | Group description data

begin
  # Set group description.
  result = api_instance.set_group_description(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_description: #{e}"
end
```

#### Using the set_group_description_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> set_group_description_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Set group description.
  data, status_code, headers = api_instance.set_group_description_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_description_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**GroupUpdateDescriptionPayload**](GroupUpdateDescriptionPayload.md) | Group description data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## set_group_locked

> <APIResponse> set_group_locked(instance_key, locked, group_id)

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
  result = api_instance.set_group_locked(instance_key, locked, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_locked: #{e}"
end
```

#### Using the set_group_locked_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> set_group_locked_with_http_info(instance_key, locked, group_id)

```ruby
begin
  # Set group locked.
  data, status_code, headers = api_instance.set_group_locked_with_http_info(instance_key, locked, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_locked_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **locked** | **Boolean** | Locked status | [default to false] |
| **group_id** | **String** | Group id of the group |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## set_group_name

> <APIResponse> set_group_name(instance_key, group_id, data)

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
data = OpenapiClient::GroupUpdateNamePayload.new # GroupUpdateNamePayload | Group name data

begin
  # Set group name.
  result = api_instance.set_group_name(instance_key, group_id, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_name: #{e}"
end
```

#### Using the set_group_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> set_group_name_with_http_info(instance_key, group_id, data)

```ruby
begin
  # Set group name.
  data, status_code, headers = api_instance.set_group_name_with_http_info(instance_key, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **data** | [**GroupUpdateNamePayload**](GroupUpdateNamePayload.md) | Group name data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## set_group_picture

> <APIResponse> set_group_picture(instance_key, group_id, set_group_picture_request)

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
set_group_picture_request = OpenapiClient::SetGroupPictureRequest.new({file: File.new('/path/to/some/file')}) # SetGroupPictureRequest | 

begin
  # Set group picture.
  result = api_instance.set_group_picture(instance_key, group_id, set_group_picture_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_picture: #{e}"
end
```

#### Using the set_group_picture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> set_group_picture_with_http_info(instance_key, group_id, set_group_picture_request)

```ruby
begin
  # Set group picture.
  data, status_code, headers = api_instance.set_group_picture_with_http_info(instance_key, group_id, set_group_picture_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupManagementApi->set_group_picture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **group_id** | **String** | Group id of the group |  |
| **set_group_picture_request** | [**SetGroupPictureRequest**](SetGroupPictureRequest.md) |  |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

