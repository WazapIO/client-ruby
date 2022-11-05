# OpenapiClient::BusinessManagementApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**instances_instance_key_business_catalog_get**](BusinessManagementApi.md#instances_instance_key_business_catalog_get) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog. |


## instances_instance_key_business_catalog_get

> <APIResponse> instances_instance_key_business_catalog_get(instance_key)

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

api_instance = OpenapiClient::BusinessManagementApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  # Fetches the catlog.
  result = api_instance.instances_instance_key_business_catalog_get(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessManagementApi->instances_instance_key_business_catalog_get: #{e}"
end
```

#### Using the instances_instance_key_business_catalog_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> instances_instance_key_business_catalog_get_with_http_info(instance_key)

```ruby
begin
  # Fetches the catlog.
  data, status_code, headers = api_instance.instances_instance_key_business_catalog_get_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessManagementApi->instances_instance_key_business_catalog_get_with_http_info: #{e}"
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

