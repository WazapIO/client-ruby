=begin
#WhatsAPI Go

#The V2 of WhatsAPI Go

The version of the OpenAPI document: 2.0
Contact: manjit@sponsorbook.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class InstanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change Webhook url.
    # Changes the webhook url of an instance.
    # @param instance_key [String] Instance key
    # @param data [WebhookPayload] Message data
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def change_webhook_url(instance_key, data, opts = {})
      data, _status_code, _headers = change_webhook_url_with_http_info(instance_key, data, opts)
      data
    end

    # Change Webhook url.
    # Changes the webhook url of an instance.
    # @param instance_key [String] Instance key
    # @param data [WebhookPayload] Message data
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def change_webhook_url_with_http_info(instance_key, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.change_webhook_url ...'
      end
      # verify the required parameter 'instance_key' is set
      if @api_client.config.client_side_validation && instance_key.nil?
        fail ArgumentError, "Missing the required parameter 'instance_key' when calling InstanceApi.change_webhook_url"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling InstanceApi.change_webhook_url"
      end
      # resource path
      local_var_path = '/instances/{instance_key}/webhook'.sub('{' + 'instance_key' + '}', CGI.escape(instance_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data)

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.change_webhook_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#change_webhook_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new instance key.
    # This endpoint is used to create a new WhatsApp Web instance.
    # @param data [CreateInstancePayload] Instance data
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def create_instance(data, opts = {})
      data, _status_code, _headers = create_instance_with_http_info(data, opts)
      data
    end

    # Creates a new instance key.
    # This endpoint is used to create a new WhatsApp Web instance.
    # @param data [CreateInstancePayload] Instance data
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def create_instance_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.create_instance ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling InstanceApi.create_instance"
      end
      # resource path
      local_var_path = '/instances/create'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data)

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.create_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#create_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Instance.
    # Deletes the instance with the provided key.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def delete_instance(instance_key, opts = {})
      data, _status_code, _headers = delete_instance_with_http_info(instance_key, opts)
      data
    end

    # Delete Instance.
    # Deletes the instance with the provided key.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def delete_instance_with_http_info(instance_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.delete_instance ...'
      end
      # verify the required parameter 'instance_key' is set
      if @api_client.config.client_side_validation && instance_key.nil?
        fail ArgumentError, "Missing the required parameter 'instance_key' when calling InstanceApi.delete_instance"
      end
      # resource path
      local_var_path = '/instances/{instance_key}/delete'.sub('{' + 'instance_key' + '}', CGI.escape(instance_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.delete_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#delete_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get contacts.
    # Fetches the list of contacts in the instance.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def get_contacts(instance_key, opts = {})
      data, _status_code, _headers = get_contacts_with_http_info(instance_key, opts)
      data
    end

    # Get contacts.
    # Fetches the list of contacts in the instance.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def get_contacts_with_http_info(instance_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.get_contacts ...'
      end
      # verify the required parameter 'instance_key' is set
      if @api_client.config.client_side_validation && instance_key.nil?
        fail ArgumentError, "Missing the required parameter 'instance_key' when calling InstanceApi.get_contacts"
      end
      # resource path
      local_var_path = '/instances/{instance_key}/contacts'.sub('{' + 'instance_key' + '}', CGI.escape(instance_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.get_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#get_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Instance.
    # Returns the instance data of single instance with connection status.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def get_instance(instance_key, opts = {})
      data, _status_code, _headers = get_instance_with_http_info(instance_key, opts)
      data
    end

    # Get Instance.
    # Returns the instance data of single instance with connection status.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def get_instance_with_http_info(instance_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.get_instance ...'
      end
      # verify the required parameter 'instance_key' is set
      if @api_client.config.client_side_validation && instance_key.nil?
        fail ArgumentError, "Missing the required parameter 'instance_key' when calling InstanceApi.get_instance"
      end
      # resource path
      local_var_path = '/instances/{instance_key}/'.sub('{' + 'instance_key' + '}', CGI.escape(instance_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.get_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#get_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get QrCode.
    # Returns the qrcode in the base64 format.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def get_qr_code(instance_key, opts = {})
      data, _status_code, _headers = get_qr_code_with_http_info(instance_key, opts)
      data
    end

    # Get QrCode.
    # Returns the qrcode in the base64 format.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def get_qr_code_with_http_info(instance_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.get_qr_code ...'
      end
      # verify the required parameter 'instance_key' is set
      if @api_client.config.client_side_validation && instance_key.nil?
        fail ArgumentError, "Missing the required parameter 'instance_key' when calling InstanceApi.get_qr_code"
      end
      # resource path
      local_var_path = '/instances/{instance_key}/qrcode'.sub('{' + 'instance_key' + '}', CGI.escape(instance_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.get_qr_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#get_qr_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all instances.
    # Fetches the list of all Instances with login status.
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def list_instances(opts = {})
      data, _status_code, _headers = list_instances_with_http_info(opts)
      data
    end

    # Get all instances.
    # Fetches the list of all Instances with login status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def list_instances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.list_instances ...'
      end
      # resource path
      local_var_path = '/instances/list'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.list_instances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#list_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Logout Instance.
    # Logouts of the instance with the provided key.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [APIResponse]
    def logout_instance(instance_key, opts = {})
      data, _status_code, _headers = logout_instance_with_http_info(instance_key, opts)
      data
    end

    # Logout Instance.
    # Logouts of the instance with the provided key.
    # @param instance_key [String] Instance key
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def logout_instance_with_http_info(instance_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstanceApi.logout_instance ...'
      end
      # verify the required parameter 'instance_key' is set
      if @api_client.config.client_side_validation && instance_key.nil?
        fail ArgumentError, "Missing the required parameter 'instance_key' when calling InstanceApi.logout_instance"
      end
      # resource path
      local_var_path = '/instances/{instance_key}/logout'.sub('{' + 'instance_key' + '}', CGI.escape(instance_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InstanceApi.logout_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#logout_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
