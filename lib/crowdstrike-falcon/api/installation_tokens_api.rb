=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class InstallationTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Search for audit events by providing an FQL filter and paging details.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The offset to start retrieving records from.
    # @option opts [Integer] :limit The maximum records to return. [1-1000]. Defaults to 50.
    # @option opts [String] :sort The property to sort by (e.g. timestamp.desc).
    # @option opts [String] :filter The filter expression that should be used to limit the results (e.g., &#x60;action:&#39;token_create&#39;&#x60;).
    # @return [MsaQueryResponse]
    def audit_events_query(opts = {})
      data, _status_code, _headers = audit_events_query_with_http_info(opts)
      data
    end

    # Search for audit events by providing an FQL filter and paging details.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The offset to start retrieving records from.
    # @option opts [Integer] :limit The maximum records to return. [1-1000]. Defaults to 50.
    # @option opts [String] :sort The property to sort by (e.g. timestamp.desc).
    # @option opts [String] :filter The filter expression that should be used to limit the results (e.g., &#x60;action:&#39;token_create&#39;&#x60;).
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def audit_events_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.audit_events_query ...'
      end
      # resource path
      local_var_path = '/installation-tokens/queries/audit-events/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.audit_events_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#audit_events_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the details of one or more audit events by id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids IDs of audit events to retrieve details for
    # @return [ApiAuditEventDetailsResponseV1]
    def audit_events_read(opts = {})
      data, _status_code, _headers = audit_events_read_with_http_info(opts)
      data
    end

    # Gets the details of one or more audit events by id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids IDs of audit events to retrieve details for
    # @return [Array<(ApiAuditEventDetailsResponseV1, Integer, Hash)>] ApiAuditEventDetailsResponseV1 data, response status code and response headers
    def audit_events_read_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.audit_events_read ...'
      end
      # resource path
      local_var_path = '/installation-tokens/entities/audit-events/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiAuditEventDetailsResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.audit_events_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#audit_events_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check current installation token settings.
    # @param [Hash] opts the optional parameters
    # @return [ApiCustomerSettingsResponseV1]
    def customer_settings_read(opts = {})
      data, _status_code, _headers = customer_settings_read_with_http_info(opts)
      data
    end

    # Check current installation token settings.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiCustomerSettingsResponseV1, Integer, Hash)>] ApiCustomerSettingsResponseV1 data, response status code and response headers
    def customer_settings_read_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.customer_settings_read ...'
      end
      # resource path
      local_var_path = '/installation-tokens/entities/customer-settings/v1'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiCustomerSettingsResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.customer_settings_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#customer_settings_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a token.
    # @param body [ApiTokenCreateRequestV1] 
    # @param [Hash] opts the optional parameters
    # @return [ApiTokenDetailsResponseV1]
    def tokens_create(body, opts = {})
      data, _status_code, _headers = tokens_create_with_http_info(body, opts)
      data
    end

    # Creates a token.
    # @param body [ApiTokenCreateRequestV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiTokenDetailsResponseV1, Integer, Hash)>] ApiTokenDetailsResponseV1 data, response status code and response headers
    def tokens_create_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.tokens_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InstallationTokensApi.tokens_create"
      end
      # resource path
      local_var_path = '/installation-tokens/entities/tokens/v1'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiTokenDetailsResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.tokens_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#tokens_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.
    # @param ids [Array<String>] The token ids to delete.
    # @param [Hash] opts the optional parameters
    # @return [MsaReplyMetaOnly]
    def tokens_delete(ids, opts = {})
      data, _status_code, _headers = tokens_delete_with_http_info(ids, opts)
      data
    end

    # Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.
    # @param ids [Array<String>] The token ids to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaReplyMetaOnly, Integer, Hash)>] MsaReplyMetaOnly data, response status code and response headers
    def tokens_delete_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.tokens_delete ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling InstallationTokensApi.tokens_delete"
      end
      # resource path
      local_var_path = '/installation-tokens/entities/tokens/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaReplyMetaOnly'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.tokens_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#tokens_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for tokens by providing an FQL filter and paging details.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The offset to start retrieving records from.
    # @option opts [Integer] :limit The maximum records to return. [1-1000]. Defaults to 50.
    # @option opts [String] :sort The property to sort by (e.g. created_timestamp.desc).
    # @option opts [String] :filter The filter expression that should be used to limit the results (e.g., &#x60;status:&#39;valid&#39;&#x60;).
    # @return [MsaQueryResponse]
    def tokens_query(opts = {})
      data, _status_code, _headers = tokens_query_with_http_info(opts)
      data
    end

    # Search for tokens by providing an FQL filter and paging details.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The offset to start retrieving records from.
    # @option opts [Integer] :limit The maximum records to return. [1-1000]. Defaults to 50.
    # @option opts [String] :sort The property to sort by (e.g. created_timestamp.desc).
    # @option opts [String] :filter The filter expression that should be used to limit the results (e.g., &#x60;status:&#39;valid&#39;&#x60;).
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def tokens_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.tokens_query ...'
      end
      # resource path
      local_var_path = '/installation-tokens/queries/tokens/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.tokens_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#tokens_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the details of one or more tokens by id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids IDs of tokens to retrieve details for
    # @return [ApiTokenDetailsResponseV1]
    def tokens_read(opts = {})
      data, _status_code, _headers = tokens_read_with_http_info(opts)
      data
    end

    # Gets the details of one or more tokens by id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids IDs of tokens to retrieve details for
    # @return [Array<(ApiTokenDetailsResponseV1, Integer, Hash)>] ApiTokenDetailsResponseV1 data, response status code and response headers
    def tokens_read_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.tokens_read ...'
      end
      # resource path
      local_var_path = '/installation-tokens/entities/tokens/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiTokenDetailsResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.tokens_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#tokens_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.
    # @param ids [Array<String>] The token ids to update.
    # @param body [ApiTokenPatchRequestV1] 
    # @param [Hash] opts the optional parameters
    # @return [MsaQueryResponse]
    def tokens_update(ids, body, opts = {})
      data, _status_code, _headers = tokens_update_with_http_info(ids, body, opts)
      data
    end

    # Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.
    # @param ids [Array<String>] The token ids to update.
    # @param body [ApiTokenPatchRequestV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def tokens_update_with_http_info(ids, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstallationTokensApi.tokens_update ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling InstallationTokensApi.tokens_update"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InstallationTokensApi.tokens_update"
      end
      # resource path
      local_var_path = '/installation-tokens/entities/tokens/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"InstallationTokensApi.tokens_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallationTokensApi#tokens_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
