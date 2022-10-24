=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class CloudConnectAwsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or update Global Settings which are applicable to all provisioned AWS accounts
    # @param body [ModelsModifyAWSCustomerSettingsV1] 
    # @param [Hash] opts the optional parameters
    # @return [ModelsCustomerConfigurationsV1]
    def create_or_update_aws_settings(body, opts = {})
      data, _status_code, _headers = create_or_update_aws_settings_with_http_info(body, opts)
      data
    end

    # Create or update Global Settings which are applicable to all provisioned AWS accounts
    # @param body [ModelsModifyAWSCustomerSettingsV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelsCustomerConfigurationsV1, Integer, Hash)>] ModelsCustomerConfigurationsV1 data, response status code and response headers
    def create_or_update_aws_settings_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.create_or_update_aws_settings ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CloudConnectAwsApi.create_or_update_aws_settings"
      end
      # resource path
      local_var_path = '/cloud-connect-aws/entities/settings/v1'

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
      return_type = opts[:debug_return_type] || 'ModelsCustomerConfigurationsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.create_or_update_aws_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#create_or_update_aws_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a set of AWS Accounts by specifying their IDs
    # @param ids [Array<String>] IDs of accounts to remove
    # @param [Hash] opts the optional parameters
    # @return [ModelsBaseResponseV1]
    def delete_aws_accounts(ids, opts = {})
      data, _status_code, _headers = delete_aws_accounts_with_http_info(ids, opts)
      data
    end

    # Delete a set of AWS Accounts by specifying their IDs
    # @param ids [Array<String>] IDs of accounts to remove
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelsBaseResponseV1, Integer, Hash)>] ModelsBaseResponseV1 data, response status code and response headers
    def delete_aws_accounts_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.delete_aws_accounts ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling CloudConnectAwsApi.delete_aws_accounts"
      end
      # resource path
      local_var_path = '/cloud-connect-aws/entities/accounts/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :multi)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ModelsBaseResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.delete_aws_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#delete_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a set of AWS Accounts by specifying their IDs
    # @param ids [Array<String>] IDs of accounts to retrieve details
    # @param [Hash] opts the optional parameters
    # @return [ModelsAWSAccountsV1]
    def get_aws_accounts(ids, opts = {})
      data, _status_code, _headers = get_aws_accounts_with_http_info(ids, opts)
      data
    end

    # Retrieve a set of AWS Accounts by specifying their IDs
    # @param ids [Array<String>] IDs of accounts to retrieve details
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelsAWSAccountsV1, Integer, Hash)>] ModelsAWSAccountsV1 data, response status code and response headers
    def get_aws_accounts_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.get_aws_accounts ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling CloudConnectAwsApi.get_aws_accounts"
      end
      if @api_client.config.client_side_validation && ids.length > 5000
        fail ArgumentError, 'invalid value for "ids" when calling CloudConnectAwsApi.get_aws_accounts, number of items must be less than or equal to 5000.'
      end

      # resource path
      local_var_path = '/cloud-connect-aws/entities/accounts/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :multi)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ModelsAWSAccountsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.get_aws_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#get_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts
    # @param [Hash] opts the optional parameters
    # @return [ModelsCustomerConfigurationsV1]
    def get_aws_settings(opts = {})
      data, _status_code, _headers = get_aws_settings_with_http_info(opts)
      data
    end

    # Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelsCustomerConfigurationsV1, Integer, Hash)>] ModelsCustomerConfigurationsV1 data, response status code and response headers
    def get_aws_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.get_aws_settings ...'
      end
      # resource path
      local_var_path = '/cloud-connect-aws/combined/settings/v1'

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
      return_type = opts[:debug_return_type] || 'ModelsCustomerConfigurationsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.get_aws_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#get_aws_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Provision AWS Accounts by specifying details about the accounts to provision
    # @param body [ModelsCreateAWSAccountsV1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :mode Mode for provisioning. Allowed values are &#x60;manual&#x60; or &#x60;cloudformation&#x60;. Defaults to manual if not defined. (default to 'manual')
    # @return [ModelsAWSAccountsV1]
    def provision_aws_accounts(body, opts = {})
      data, _status_code, _headers = provision_aws_accounts_with_http_info(body, opts)
      data
    end

    # Provision AWS Accounts by specifying details about the accounts to provision
    # @param body [ModelsCreateAWSAccountsV1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :mode Mode for provisioning. Allowed values are &#x60;manual&#x60; or &#x60;cloudformation&#x60;. Defaults to manual if not defined. (default to 'manual')
    # @return [Array<(ModelsAWSAccountsV1, Integer, Hash)>] ModelsAWSAccountsV1 data, response status code and response headers
    def provision_aws_accounts_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.provision_aws_accounts ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CloudConnectAwsApi.provision_aws_accounts"
      end
      allowable_values = ["cloudformation", "manual"]
      if @api_client.config.client_side_validation && opts[:'mode'] && !allowable_values.include?(opts[:'mode'])
        fail ArgumentError, "invalid value for \"mode\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/cloud-connect-aws/entities/accounts/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mode'] = opts[:'mode'] if !opts[:'mode'].nil?

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
      return_type = opts[:debug_return_type] || 'ModelsAWSAccountsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.provision_aws_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#provision_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]. Defaults to 100. (default to 100)
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [String] :sort The property to sort by (e.g. alias.desc or state.asc)
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @return [ModelsAWSAccountsV1]
    def query_aws_accounts(opts = {})
      data, _status_code, _headers = query_aws_accounts_with_http_info(opts)
      data
    end

    # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]. Defaults to 100. (default to 100)
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [String] :sort The property to sort by (e.g. alias.desc or state.asc)
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @return [Array<(ModelsAWSAccountsV1, Integer, Hash)>] ModelsAWSAccountsV1 data, response status code and response headers
    def query_aws_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.query_aws_accounts ...'
      end
      # resource path
      local_var_path = '/cloud-connect-aws/combined/accounts/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
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
      return_type = opts[:debug_return_type] || 'ModelsAWSAccountsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.query_aws_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#query_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]. Defaults to 100. (default to 100)
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [String] :sort The property to sort by (e.g. alias.desc or state.asc)
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @return [MsaQueryResponse]
    def query_aws_accounts_for_ids(opts = {})
      data, _status_code, _headers = query_aws_accounts_for_ids_with_http_info(opts)
      data
    end

    # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]. Defaults to 100. (default to 100)
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [String] :sort The property to sort by (e.g. alias.desc or state.asc)
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_aws_accounts_for_ids_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.query_aws_accounts_for_ids ...'
      end
      # resource path
      local_var_path = '/cloud-connect-aws/queries/accounts/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
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
        :operation => :"CloudConnectAwsApi.query_aws_accounts_for_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#query_aws_accounts_for_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update AWS Accounts by specifying the ID of the account and details to update
    # @param body [ModelsUpdateAWSAccountsV1] 
    # @param [Hash] opts the optional parameters
    # @return [ModelsAWSAccountsV1]
    def update_aws_accounts(body, opts = {})
      data, _status_code, _headers = update_aws_accounts_with_http_info(body, opts)
      data
    end

    # Update AWS Accounts by specifying the ID of the account and details to update
    # @param body [ModelsUpdateAWSAccountsV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelsAWSAccountsV1, Integer, Hash)>] ModelsAWSAccountsV1 data, response status code and response headers
    def update_aws_accounts_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.update_aws_accounts ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CloudConnectAwsApi.update_aws_accounts"
      end
      # resource path
      local_var_path = '/cloud-connect-aws/entities/accounts/v1'

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
      return_type = opts[:debug_return_type] || 'ModelsAWSAccountsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.update_aws_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#update_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Performs an Access Verification check on the specified AWS Account IDs
    # @param ids [Array<String>] IDs of accounts to verify access on
    # @param [Hash] opts the optional parameters
    # @return [ModelsVerifyAccessResponseV1]
    def verify_aws_account_access(ids, opts = {})
      data, _status_code, _headers = verify_aws_account_access_with_http_info(ids, opts)
      data
    end

    # Performs an Access Verification check on the specified AWS Account IDs
    # @param ids [Array<String>] IDs of accounts to verify access on
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelsVerifyAccessResponseV1, Integer, Hash)>] ModelsVerifyAccessResponseV1 data, response status code and response headers
    def verify_aws_account_access_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CloudConnectAwsApi.verify_aws_account_access ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling CloudConnectAwsApi.verify_aws_account_access"
      end
      # resource path
      local_var_path = '/cloud-connect-aws/entities/verify-account-access/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :multi)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ModelsVerifyAccessResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"CloudConnectAwsApi.verify_aws_account_access",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudConnectAwsApi#verify_aws_account_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end