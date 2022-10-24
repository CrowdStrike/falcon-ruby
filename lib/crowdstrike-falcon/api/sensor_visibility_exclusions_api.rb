=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class SensorVisibilityExclusionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create the sensor visibility exclusions
    # @param body [RequestsSvExclusionCreateReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [ResponsesMlExclusionRespV1]
    def create_sv_exclusions_v1(body, opts = {})
      data, _status_code, _headers = create_sv_exclusions_v1_with_http_info(body, opts)
      data
    end

    # Create the sensor visibility exclusions
    # @param body [RequestsSvExclusionCreateReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsesMlExclusionRespV1, Integer, Hash)>] ResponsesMlExclusionRespV1 data, response status code and response headers
    def create_sv_exclusions_v1_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorVisibilityExclusionsApi.create_sv_exclusions_v1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SensorVisibilityExclusionsApi.create_sv_exclusions_v1"
      end
      # resource path
      local_var_path = '/policy/entities/sv-exclusions/v1'

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
      return_type = opts[:debug_return_type] || 'ResponsesMlExclusionRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorVisibilityExclusionsApi.create_sv_exclusions_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorVisibilityExclusionsApi#create_sv_exclusions_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the sensor visibility exclusions by id
    # @param ids [Array<String>] The ids of the exclusions to delete
    # @param [Hash] opts the optional parameters
    # @option opts [String] :comment Explains why this exclusions was deleted
    # @return [MsaQueryResponse]
    def delete_sensor_visibility_exclusions_v1(ids, opts = {})
      data, _status_code, _headers = delete_sensor_visibility_exclusions_v1_with_http_info(ids, opts)
      data
    end

    # Delete the sensor visibility exclusions by id
    # @param ids [Array<String>] The ids of the exclusions to delete
    # @param [Hash] opts the optional parameters
    # @option opts [String] :comment Explains why this exclusions was deleted
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def delete_sensor_visibility_exclusions_v1_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorVisibilityExclusionsApi.delete_sensor_visibility_exclusions_v1 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SensorVisibilityExclusionsApi.delete_sensor_visibility_exclusions_v1"
      end
      # resource path
      local_var_path = '/policy/entities/sv-exclusions/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :multi)
      query_params[:'comment'] = opts[:'comment'] if !opts[:'comment'].nil?

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
        :operation => :"SensorVisibilityExclusionsApi.delete_sensor_visibility_exclusions_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorVisibilityExclusionsApi#delete_sensor_visibility_exclusions_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a set of Sensor Visibility Exclusions by specifying their IDs
    # @param ids [Array<String>] The ids of the exclusions to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ResponsesSvExclusionRespV1]
    def get_sensor_visibility_exclusions_v1(ids, opts = {})
      data, _status_code, _headers = get_sensor_visibility_exclusions_v1_with_http_info(ids, opts)
      data
    end

    # Get a set of Sensor Visibility Exclusions by specifying their IDs
    # @param ids [Array<String>] The ids of the exclusions to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsesSvExclusionRespV1, Integer, Hash)>] ResponsesSvExclusionRespV1 data, response status code and response headers
    def get_sensor_visibility_exclusions_v1_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorVisibilityExclusionsApi.get_sensor_visibility_exclusions_v1 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SensorVisibilityExclusionsApi.get_sensor_visibility_exclusions_v1"
      end
      # resource path
      local_var_path = '/policy/entities/sv-exclusions/v1'

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
      return_type = opts[:debug_return_type] || 'ResponsesSvExclusionRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorVisibilityExclusionsApi.get_sensor_visibility_exclusions_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorVisibilityExclusionsApi#get_sensor_visibility_exclusions_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for sensor visibility exclusions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results.
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The sort expression that should be used to sort the results.
    # @return [MsaQueryResponse]
    def query_sensor_visibility_exclusions_v1(opts = {})
      data, _status_code, _headers = query_sensor_visibility_exclusions_v1_with_http_info(opts)
      data
    end

    # Search for sensor visibility exclusions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression that should be used to limit the results.
    # @option opts [Integer] :offset The offset to start retrieving records from
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The sort expression that should be used to sort the results.
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_sensor_visibility_exclusions_v1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorVisibilityExclusionsApi.query_sensor_visibility_exclusions_v1 ...'
      end
      allowable_values = ["applied_globally.asc", "applied_globally.desc", "created_by.asc", "created_by.desc", "created_on.asc", "created_on.desc", "last_modified.asc", "last_modified.desc", "modified_by.asc", "modified_by.desc", "value.asc", "value.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/policy/queries/sv-exclusions/v1'

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
        :operation => :"SensorVisibilityExclusionsApi.query_sensor_visibility_exclusions_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorVisibilityExclusionsApi#query_sensor_visibility_exclusions_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the sensor visibility exclusions
    # @param body [RequestsSvExclusionUpdateReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [ResponsesSvExclusionRespV1]
    def update_sensor_visibility_exclusions_v1(body, opts = {})
      data, _status_code, _headers = update_sensor_visibility_exclusions_v1_with_http_info(body, opts)
      data
    end

    # Update the sensor visibility exclusions
    # @param body [RequestsSvExclusionUpdateReqV1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsesSvExclusionRespV1, Integer, Hash)>] ResponsesSvExclusionRespV1 data, response status code and response headers
    def update_sensor_visibility_exclusions_v1_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SensorVisibilityExclusionsApi.update_sensor_visibility_exclusions_v1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SensorVisibilityExclusionsApi.update_sensor_visibility_exclusions_v1"
      end
      # resource path
      local_var_path = '/policy/entities/sv-exclusions/v1'

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
      return_type = opts[:debug_return_type] || 'ResponsesSvExclusionRespV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SensorVisibilityExclusionsApi.update_sensor_visibility_exclusions_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SensorVisibilityExclusionsApi#update_sensor_visibility_exclusions_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
