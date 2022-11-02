# OpenapiClient::InstanceApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**instances_create_get**](InstanceApi.md#instances_create_get) | **GET** /instances/create | Creates a new instance key. |
| [**instances_instance_key_contacts_get**](InstanceApi.md#instances_instance_key_contacts_get) | **GET** /instances/{instance_key}/contacts | Get contacts. |
| [**instances_instance_key_delete_delete**](InstanceApi.md#instances_instance_key_delete_delete) | **DELETE** /instances/{instance_key}/delete | Delete Instance. |
| [**instances_instance_key_get**](InstanceApi.md#instances_instance_key_get) | **GET** /instances/{instance_key}/ | Get Instance. |
| [**instances_instance_key_logout_delete**](InstanceApi.md#instances_instance_key_logout_delete) | **DELETE** /instances/{instance_key}/logout | Logout Instance. |
| [**instances_instance_key_qrcode_get**](InstanceApi.md#instances_instance_key_qrcode_get) | **GET** /instances/{instance_key}/qrcode | Get QrCode. |
| [**instances_instance_key_webhook_put**](InstanceApi.md#instances_instance_key_webhook_put) | **PUT** /instances/{instance_key}/webhook | Change Webhook url. |
| [**instances_list_get**](InstanceApi.md#instances_list_get) | **GET** /instances/list | Get all instances. |


## instances_create_get

> <MainAPIResponse> instances_create_get(opts)

Creates a new instance key.

This endpoint is used to create a new WhatsApp Web instance.

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

api_instance = OpenapiClient::InstanceApi.new
opts = {
  instance_key: 'instance_key_example' # String | Insert instance key if you want to provide custom key
}

begin
  # Creates a new instance key.
  result = api_instance.instances_create_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_create_get: #{e}"
end
```

#### Using the instances_create_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_create_get_with_http_info(opts)

```ruby
begin
  # Creates a new instance key.
  data, status_code, headers = api_instance.instances_create_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_create_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Insert instance key if you want to provide custom key | [optional] |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## instances_instance_key_contacts_get

> <MainAPIResponse> instances_instance_key_contacts_get(instance_key)

Get contacts.

Fetches the list of contacts in the instance.

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

api_instance = OpenapiClient::InstanceApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Get contacts.
  result = api_instance.instances_instance_key_contacts_get(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_contacts_get: #{e}"
end
```

#### Using the instances_instance_key_contacts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_contacts_get_with_http_info(instance_key)

```ruby
begin
  # Get contacts.
  data, status_code, headers = api_instance.instances_instance_key_contacts_get_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_contacts_get_with_http_info: #{e}"
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


## instances_instance_key_delete_delete

> <MainAPIResponse> instances_instance_key_delete_delete(instance_key)

Delete Instance.

Deletes the instance with the provided key.

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

api_instance = OpenapiClient::InstanceApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Delete Instance.
  result = api_instance.instances_instance_key_delete_delete(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_delete_delete: #{e}"
end
```

#### Using the instances_instance_key_delete_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_delete_delete_with_http_info(instance_key)

```ruby
begin
  # Delete Instance.
  data, status_code, headers = api_instance.instances_instance_key_delete_delete_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_delete_delete_with_http_info: #{e}"
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


## instances_instance_key_get

> <MainAPIResponse> instances_instance_key_get(instance_key)

Get Instance.

Returns the instance data of single instance with connection status.

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

api_instance = OpenapiClient::InstanceApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Get Instance.
  result = api_instance.instances_instance_key_get(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_get: #{e}"
end
```

#### Using the instances_instance_key_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_get_with_http_info(instance_key)

```ruby
begin
  # Get Instance.
  data, status_code, headers = api_instance.instances_instance_key_get_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_get_with_http_info: #{e}"
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


## instances_instance_key_logout_delete

> <MainAPIResponse> instances_instance_key_logout_delete(instance_key)

Logout Instance.

Logouts of the instance with the provided key.

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

api_instance = OpenapiClient::InstanceApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Logout Instance.
  result = api_instance.instances_instance_key_logout_delete(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_logout_delete: #{e}"
end
```

#### Using the instances_instance_key_logout_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_logout_delete_with_http_info(instance_key)

```ruby
begin
  # Logout Instance.
  data, status_code, headers = api_instance.instances_instance_key_logout_delete_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_logout_delete_with_http_info: #{e}"
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


## instances_instance_key_qrcode_get

> <MainAPIResponse> instances_instance_key_qrcode_get(instance_key)

Get QrCode.

Returns the qrcode in the base64 format.

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

api_instance = OpenapiClient::InstanceApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Get QrCode.
  result = api_instance.instances_instance_key_qrcode_get(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_qrcode_get: #{e}"
end
```

#### Using the instances_instance_key_qrcode_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_qrcode_get_with_http_info(instance_key)

```ruby
begin
  # Get QrCode.
  data, status_code, headers = api_instance.instances_instance_key_qrcode_get_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_qrcode_get_with_http_info: #{e}"
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


## instances_instance_key_webhook_put

> <MainAPIResponse> instances_instance_key_webhook_put(instance_key, data)

Change Webhook url.

Changes the webhook url of an instance.

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

api_instance = OpenapiClient::InstanceApi.new
instance_key = 'instance_key_example' # String | Instance key
data = OpenapiClient::StructsWebhookPayload.new # StructsWebhookPayload | Message data

begin
  # Change Webhook url.
  result = api_instance.instances_instance_key_webhook_put(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_webhook_put: #{e}"
end
```

#### Using the instances_instance_key_webhook_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_instance_key_webhook_put_with_http_info(instance_key, data)

```ruby
begin
  # Change Webhook url.
  data, status_code, headers = api_instance.instances_instance_key_webhook_put_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_instance_key_webhook_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**StructsWebhookPayload**](StructsWebhookPayload.md) | Message data |  |

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## instances_list_get

> <MainAPIResponse> instances_list_get

Get all instances.

Fetches the list of all Instances with login status.

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

api_instance = OpenapiClient::InstanceApi.new

begin
  # Get all instances.
  result = api_instance.instances_list_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_list_get: #{e}"
end
```

#### Using the instances_list_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MainAPIResponse>, Integer, Hash)> instances_list_get_with_http_info

```ruby
begin
  # Get all instances.
  data, status_code, headers = api_instance.instances_list_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MainAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->instances_list_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

