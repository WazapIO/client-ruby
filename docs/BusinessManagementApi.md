# OpenapiClient::BusinessManagementApi

All URIs are relative to */api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fetch_catlog**](BusinessManagementApi.md#fetch_catlog) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog. |
| [**send_payment_request**](BusinessManagementApi.md#send_payment_request) | **POST** /instances/{instance_key}/business/payment-request | Send a payment request. |


## fetch_catlog

> <APIResponse> fetch_catlog(instance_key)

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
  result = api_instance.fetch_catlog(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessManagementApi->fetch_catlog: #{e}"
end
```

#### Using the fetch_catlog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> fetch_catlog_with_http_info(instance_key)

```ruby
begin
  # Fetches the catlog.
  data, status_code, headers = api_instance.fetch_catlog_with_http_info(instance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessManagementApi->fetch_catlog_with_http_info: #{e}"
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


## send_payment_request

> <APIResponse> send_payment_request(instance_key, data)

Send a payment request.

Sends an payment request to a user. Feature is still in beta.

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
data = OpenapiClient::PaymentRequestPayload.new # PaymentRequestPayload | Data

begin
  # Send a payment request.
  result = api_instance.send_payment_request(instance_key, data)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessManagementApi->send_payment_request: #{e}"
end
```

#### Using the send_payment_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIResponse>, Integer, Hash)> send_payment_request_with_http_info(instance_key, data)

```ruby
begin
  # Send a payment request.
  data, status_code, headers = api_instance.send_payment_request_with_http_info(instance_key, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessManagementApi->send_payment_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_key** | **String** | Instance key |  |
| **data** | [**PaymentRequestPayload**](PaymentRequestPayload.md) | Data |  |

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

