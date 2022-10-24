=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class HostGroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Host Groups by specifying details about the group to create
    # @param body [RequestsCreateGroupsV1] 
    # @param [Hash] opts the optional parameters
    # @return [ResponsesHostGroupsV1]
    def create_host_groups(body, opts = {})
      data, _status_code, _headers = create_host_groups_with_http_info(body, opts)
      data
    end

    # Create Host Groups by specifying details about the group to create
    # @param body [RequestsCreateGroupsV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsesHostGroupsV1, Integer, Hash)>] ResponsesHostGroupsV1 data, response status code and response headers
    def create_host_groups_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.create_host_groups ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling HostGroupApi.create_host_groups"
      end
      # resource path
      local_var_path = '/devices/entities/host-groups/v1'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsesHostGroupsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.create_host_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#create_host_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a set of Host Groups by specifying their IDs
    # @param ids [Array<String>] The IDs of the Host Groups to delete
    # @param [Hash] opts the optional parameters
    # @return [MsaQueryResponse]
    def delete_host_groups(ids, opts = {})
      data, _status_code, _headers = delete_host_groups_with_http_info(ids, opts)
      data
    end

    # Delete a set of Host Groups by specifying their IDs
    # @param ids [Array<String>] The IDs of the Host Groups to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def delete_host_groups_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.delete_host_groups ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling HostGroupApi.delete_host_groups"
      end
      # resource path
      local_var_path = '/devices/entities/host-groups/v1'

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
      return_type = opts[:debug_return_type] || 'MsaQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.delete_host_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#delete_host_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a set of Host Groups by specifying their IDs
    # @param ids [Array<String>] The IDs of the Host Groups to return
    # @param [Hash] opts the optional parameters
    # @return [ResponsesHostGroupsV1]
    def get_host_groups(ids, opts = {})
      data, _status_code, _headers = get_host_groups_with_http_info(ids, opts)
      data
    end

    # Retrieve a set of Host Groups by specifying their IDs
    # @param ids [Array<String>] The IDs of the Host Groups to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsesHostGroupsV1, Integer, Hash)>] ResponsesHostGroupsV1 data, response status code and response headers
    def get_host_groups_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.get_host_groups ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling HostGroupApi.get_host_groups"
      end
      # resource path
      local_var_path = '/devices/entities/host-groups/v1'

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
      return_type = opts[:debug_return_type] || 'ResponsesHostGroupsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.get_host_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#get_host_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform the specified action on the Host Groups specified in the request
    # @param action_name [String] The action to perform
    # @param body [MsaEntityActionRequestV2] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :disable_hostname_check Bool to disable hostname check on add-member (default to false)
    # @return [ResponsesHostGroupsV1]
    def perform_group_action(action_name, body, opts = {})
      data, _status_code, _headers = perform_group_action_with_http_info(action_name, body, opts)
      data
    end

    # Perform the specified action on the Host Groups specified in the request
    # @param action_name [String] The action to perform
    # @param body [MsaEntityActionRequestV2] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :disable_hostname_check Bool to disable hostname check on add-member (default to false)
    # @return [Array<(ResponsesHostGroupsV1, Integer, Hash)>] ResponsesHostGroupsV1 data, response status code and response headers
    def perform_group_action_with_http_info(action_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.perform_group_action ...'
      end
      # verify the required parameter 'action_name' is set
      if @api_client.config.client_side_validation && action_name.nil?
        fail ArgumentError, "Missing the required parameter 'action_name' when calling HostGroupApi.perform_group_action"
      end
      # verify enum value
      allowable_values = ["add-hosts", "remove-hosts"]
      if @api_client.config.client_side_validation && !allowable_values.include?(action_name)
        fail ArgumentError, "invalid value for \"action_name\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling HostGroupApi.perform_group_action"
      end
      # resource path
      local_var_path = '/devices/entities/host-group-actions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'action_name'] = action_name
      query_params[:'disable_hostname_check'] = opts[:'disable_hostname_check'] if !opts[:'disable_hostname_check'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsesHostGroupsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.perform_group_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#perform_group_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Host Group to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [ResponsesHostGroupMembersV1]
    def query_combined_group_members(opts = {})
      data, _status_code, _headers = query_combined_group_members_with_http_info(opts)
      data
    end

    # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Host Group to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(ResponsesHostGroupMembersV1, Integer, Hash)>] ResponsesHostGroupMembersV1 data, response status code and response headers
    def query_combined_group_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.query_combined_group_members ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HostGroupApi.query_combined_group_members, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_combined_group_members, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_combined_group_members, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/devices/combined/host-group-members/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsesHostGroupMembersV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.query_combined_group_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#query_combined_group_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [ResponsesHostGroupsV1]
    def query_combined_host_groups(opts = {})
      data, _status_code, _headers = query_combined_host_groups_with_http_info(opts)
      data
    end

    # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(ResponsesHostGroupsV1, Integer, Hash)>] ResponsesHostGroupsV1 data, response status code and response headers
    def query_combined_host_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.query_combined_host_groups ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HostGroupApi.query_combined_host_groups, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_combined_host_groups, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_combined_host_groups, must be greater than or equal to 1.'
      end

      allowable_values = ["created_by.asc", "created_by.desc", "created_timestamp.asc", "created_timestamp.desc", "group_type.asc", "group_type.desc", "modified_by.asc", "modified_by.desc", "modified_timestamp.asc", "modified_timestamp.desc", "name.asc", "name.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/devices/combined/host-groups/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsesHostGroupsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.query_combined_host_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#query_combined_host_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Host Group to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [MsaQueryResponse]
    def query_group_members(opts = {})
      data, _status_code, _headers = query_group_members_with_http_info(opts)
      data
    end

    # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the Host Group to search for members of
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_group_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.query_group_members ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HostGroupApi.query_group_members, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_group_members, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_group_members, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/devices/queries/host-group-members/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

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
        :operation => :"HostGroupApi.query_group_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#query_group_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [MsaQueryResponse]
    def query_host_groups(opts = {})
      data, _status_code, _headers = query_host_groups_with_http_info(opts)
      data
    end

    # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-5000]
    # @option opts [String] :sort The property to sort by
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_host_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.query_host_groups ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HostGroupApi.query_host_groups, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_host_groups, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling HostGroupApi.query_host_groups, must be greater than or equal to 1.'
      end

      allowable_values = ["created_by.asc", "created_by.desc", "created_timestamp.asc", "created_timestamp.desc", "group_type.asc", "group_type.desc", "modified_by.asc", "modified_by.desc", "modified_timestamp.asc", "modified_timestamp.desc", "name.asc", "name.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/devices/queries/host-groups/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

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
        :operation => :"HostGroupApi.query_host_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#query_host_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Host Groups by specifying the ID of the group and details to update
    # @param body [RequestsUpdateGroupsV1] 
    # @param [Hash] opts the optional parameters
    # @return [ResponsesHostGroupsV1]
    def update_host_groups(body, opts = {})
      data, _status_code, _headers = update_host_groups_with_http_info(body, opts)
      data
    end

    # Update Host Groups by specifying the ID of the group and details to update
    # @param body [RequestsUpdateGroupsV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsesHostGroupsV1, Integer, Hash)>] ResponsesHostGroupsV1 data, response status code and response headers
    def update_host_groups_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostGroupApi.update_host_groups ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling HostGroupApi.update_host_groups"
      end
      # resource path
      local_var_path = '/devices/entities/host-groups/v1'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsesHostGroupsV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"HostGroupApi.update_host_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostGroupApi#update_host_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
