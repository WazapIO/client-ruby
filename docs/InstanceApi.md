# OpenapiClient::InstanceApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_webhook_url**](InstanceApi.md#change_webhook_url) | **PUT** /instances/{instance_key}/webhook | Change Webhook url. |
| [**create_instance**](InstanceApi.md#create_instance) | **GET** /instances/create | Creates a new instance key. |
| [**delete_instance**](InstanceApi.md#delete_instance) | **DELETE** /instances/{instance_key}/delete | Delete Instance. |
| [**get_contacts**](InstanceApi.md#get_contacts) | **GET** /instances/{instance_key}/contacts | Get contacts. |
| [**get_instance**](InstanceApi.md#get_instance) | **GET** /instances/{instance_key}/ | Get Instance. |
| [**get_qr_code**](InstanceApi.md#get_qr_code) | **GET** /instances/{instance_key}/qrcode | Get QrCode. |
| [**list_instances**](InstanceApi.md#list_instances) | **GET** /instances/list | Get all instances. |
| [**logout_instance**](InstanceApi.md#logout_instance) | **DELETE** /instances/{instance_key}/logout | Logout Instance. |


## change_webhook_url

> <APIResponse> change_webhook_url(instance_key, data)

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
data = OpenapiClient::WebhookPayload.new # WebhookPayload | Message data

begin
  # Change Webhook url.
  result = api_instance.change_webhook_url(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->change_webhook_url: #{e}"
end
```

#### Using the change_webhook_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> change_webhook_url_with_http_info(instance_key, data)

```ruby
begin
  # Change Webhook url.
  data, status_code, headers = api_instance.change_webhook_url_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->change_webhook_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**WebhookPayload**](WebhookPayload.md) | Message data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_instance

> <APIResponse> create_instance(opts)

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
  result = api_instance.create_instance(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->create_instance: #{e}"
end
```

#### Using the create_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> create_instance_with_http_info(opts)

```ruby
begin
  # Creates a new instance key.
  data, status_code, headers = api_instance.create_instance_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->create_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Insert instance key if you want to provide custom key | [optional] |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_instance

> <APIResponse> delete_instance(instance_key)

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
  result = api_instance.delete_instance(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->delete_instance: #{e}"
end
```

#### Using the delete_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> delete_instance_with_http_info(instance_key)

```ruby
begin
  # Delete Instance.
  data, status_code, headers = api_instance.delete_instance_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->delete_instance_with_http_info: #{e}"
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


## get_contacts

> <APIResponse> get_contacts(instance_key)

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
  result = api_instance.get_contacts(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->get_contacts: #{e}"
end
```

#### Using the get_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_contacts_with_http_info(instance_key)

```ruby
begin
  # Get contacts.
  data, status_code, headers = api_instance.get_contacts_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->get_contacts_with_http_info: #{e}"
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


## get_instance

> <APIResponse> get_instance(instance_key)

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
  result = api_instance.get_instance(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->get_instance: #{e}"
end
```

#### Using the get_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_instance_with_http_info(instance_key)

```ruby
begin
  # Get Instance.
  data, status_code, headers = api_instance.get_instance_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->get_instance_with_http_info: #{e}"
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


## get_qr_code

> <APIResponse> get_qr_code(instance_key)

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
  result = api_instance.get_qr_code(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->get_qr_code: #{e}"
end
```

#### Using the get_qr_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> get_qr_code_with_http_info(instance_key)

```ruby
begin
  # Get QrCode.
  data, status_code, headers = api_instance.get_qr_code_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->get_qr_code_with_http_info: #{e}"
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


## list_instances

> <APIResponse> list_instances

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
  result = api_instance.list_instances
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->list_instances: #{e}"
end
```

#### Using the list_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> list_instances_with_http_info

```ruby
begin
  # Get all instances.
  data, status_code, headers = api_instance.list_instances_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->list_instances_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## logout_instance

> <APIResponse> logout_instance(instance_key)

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
  result = api_instance.logout_instance(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->logout_instance: #{e}"
end
```

#### Using the logout_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> logout_instance_with_http_info(instance_key)

```ruby
begin
  # Logout Instance.
  data, status_code, headers = api_instance.logout_instance_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstanceApi->logout_instance_with_http_info: #{e}"
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

