=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class MessageCenterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve aggregate case values based on the matched filter
    # @param body [Array<MsaAggregateQueryRequest>] 
    # @param [Hash] opts the optional parameters
    # @return [MsaAggregatesResponse]
    def aggregate_cases(body, opts = {})
      data, _status_code, _headers = aggregate_cases_with_http_info(body, opts)
      data
    end

    # Retrieve aggregate case values based on the matched filter
    # @param body [Array<MsaAggregateQueryRequest>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaAggregatesResponse, Integer, Hash)>] MsaAggregatesResponse data, response status code and response headers
    def aggregate_cases_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.aggregate_cases ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessageCenterApi.aggregate_cases"
      end
      # resource path
      local_var_path = '/message-center/aggregates/cases/GET/v1'

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
      return_type = opts[:debug_return_type] || 'MsaAggregatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.aggregate_cases",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#aggregate_cases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add an activity to case. Only activities of type comment are allowed via API
    # @param body [ApiActivityCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MsaReplyMetaOnly]
    def case_add_activity(body, opts = {})
      data, _status_code, _headers = case_add_activity_with_http_info(body, opts)
      data
    end

    # Add an activity to case. Only activities of type comment are allowed via API
    # @param body [ApiActivityCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaReplyMetaOnly, Integer, Hash)>] MsaReplyMetaOnly data, response status code and response headers
    def case_add_activity_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.case_add_activity ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessageCenterApi.case_add_activity"
      end
      # resource path
      local_var_path = '/message-center/entities/case-activity/v1'

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
      return_type = opts[:debug_return_type] || 'MsaReplyMetaOnly'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.case_add_activity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#case_add_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload an attachment for the case.
    # Upload an attachment for the case. Maximum upload size allowed is *15 MB*.   Filename must start with *[a-zA-Z0-9_-]*. Allowed characters in file name are *[a-zA-Z0-9-_.\\s]*.    Maximum file name is *255* characters      Following attachment types are allowed:   - png   - bmp   - jpg   - jpeg   - gif   - pdf   - doc   - docx   - xls   - xlsx   - pptx   - txt   - csv
    # @param case_id [String] Case ID
    # @param user_uuid [String] User UUID
    # @param file [File] File Body
    # @param [Hash] opts the optional parameters
    # @return [ApiMessageCenterAttachmentUploadResponse]
    def case_add_attachment(case_id, user_uuid, file, opts = {})
      data, _status_code, _headers = case_add_attachment_with_http_info(case_id, user_uuid, file, opts)
      data
    end

    # Upload an attachment for the case.
    # Upload an attachment for the case. Maximum upload size allowed is *15 MB*.   Filename must start with *[a-zA-Z0-9_-]*. Allowed characters in file name are *[a-zA-Z0-9-_.\\s]*.    Maximum file name is *255* characters      Following attachment types are allowed:   - png   - bmp   - jpg   - jpeg   - gif   - pdf   - doc   - docx   - xls   - xlsx   - pptx   - txt   - csv
    # @param case_id [String] Case ID
    # @param user_uuid [String] User UUID
    # @param file [File] File Body
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiMessageCenterAttachmentUploadResponse, Integer, Hash)>] ApiMessageCenterAttachmentUploadResponse data, response status code and response headers
    def case_add_attachment_with_http_info(case_id, user_uuid, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.case_add_attachment ...'
      end
      # verify the required parameter 'case_id' is set
      if @api_client.config.client_side_validation && case_id.nil?
        fail ArgumentError, "Missing the required parameter 'case_id' when calling MessageCenterApi.case_add_attachment"
      end
      # verify the required parameter 'user_uuid' is set
      if @api_client.config.client_side_validation && user_uuid.nil?
        fail ArgumentError, "Missing the required parameter 'user_uuid' when calling MessageCenterApi.case_add_attachment"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling MessageCenterApi.case_add_attachment"
      end
      # resource path
      local_var_path = '/message-center/entities/case-attachment/v1'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['case_id'] = case_id
      form_params['user_uuid'] = user_uuid
      form_params['file'] = file

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiMessageCenterAttachmentUploadResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.case_add_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#case_add_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # retrieves an attachment for the case, given the attachment id
    # @param id [String] attachment ID
    # @param [Hash] opts the optional parameters
    # @return [String]
    def case_download_attachment(id, opts = {})
      data, _status_code, _headers = case_download_attachment_with_http_info(id, opts)
      data
    end

    # retrieves an attachment for the case, given the attachment id
    # @param id [String] attachment ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def case_download_attachment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.case_download_attachment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MessageCenterApi.case_download_attachment"
      end
      # resource path
      local_var_path = '/message-center/entities/case-attachment/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'image/png', 'image/bmp', 'image/jpeg', 'image/jpg', 'image/gif', 'application/zip', 'application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.case_download_attachment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#case_download_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # create a new case
    # @param body [ApiCaseCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MsaReplyAffectedEntities]
    def create_case(body, opts = {})
      data, _status_code, _headers = create_case_with_http_info(body, opts)
      data
    end

    # create a new case
    # @param body [ApiCaseCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaReplyAffectedEntities, Integer, Hash)>] MsaReplyAffectedEntities data, response status code and response headers
    def create_case_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.create_case ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessageCenterApi.create_case"
      end
      # resource path
      local_var_path = '/message-center/entities/case/v1'

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
      return_type = opts[:debug_return_type] || 'MsaReplyAffectedEntities'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.create_case",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#create_case\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve activities for given id's
    # @param body [MsaIdsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApiMessageCenterActivityResponse]
    def get_case_activity_by_ids(body, opts = {})
      data, _status_code, _headers = get_case_activity_by_ids_with_http_info(body, opts)
      data
    end

    # Retrieve activities for given id&#39;s
    # @param body [MsaIdsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiMessageCenterActivityResponse, Integer, Hash)>] ApiMessageCenterActivityResponse data, response status code and response headers
    def get_case_activity_by_ids_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.get_case_activity_by_ids ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessageCenterApi.get_case_activity_by_ids"
      end
      # resource path
      local_var_path = '/message-center/entities/case-activities/GET/v1'

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
      return_type = opts[:debug_return_type] || 'ApiMessageCenterActivityResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.get_case_activity_by_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#get_case_activity_by_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve message center cases
    # @param body [MsaIdsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApiMessageCenterCasesResponse]
    def get_case_entities_by_ids(body, opts = {})
      data, _status_code, _headers = get_case_entities_by_ids_with_http_info(body, opts)
      data
    end

    # Retrieve message center cases
    # @param body [MsaIdsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiMessageCenterCasesResponse, Integer, Hash)>] ApiMessageCenterCasesResponse data, response status code and response headers
    def get_case_entities_by_ids_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.get_case_entities_by_ids ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessageCenterApi.get_case_entities_by_ids"
      end
      # resource path
      local_var_path = '/message-center/entities/cases/GET/v1'

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
      return_type = opts[:debug_return_type] || 'ApiMessageCenterCasesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.get_case_entities_by_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#get_case_entities_by_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve activities id's for a case
    # @param case_id [String] Case ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query.
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @return [MsaQueryResponse]
    def query_activity_by_case_id(case_id, opts = {})
      data, _status_code, _headers = query_activity_by_case_id_with_http_info(case_id, opts)
      data
    end

    # Retrieve activities id&#39;s for a case
    # @param case_id [String] Case ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query.
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_activity_by_case_id_with_http_info(case_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.query_activity_by_case_id ...'
      end
      # verify the required parameter 'case_id' is set
      if @api_client.config.client_side_validation && case_id.nil?
        fail ArgumentError, "Missing the required parameter 'case_id' when calling MessageCenterApi.query_activity_by_case_id"
      end
      allowable_values = ["activity.created_time.asc", "activity.created_time.desc", "activity.type.asc", "activity.type.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/message-center/queries/case-activities/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'case_id'] = case_id
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

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
        :operation => :"MessageCenterApi.query_activity_by_case_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#query_activity_by_case_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve case id's that match the provided filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query.
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @return [MsaQueryResponse]
    def query_cases_ids_by_filter(opts = {})
      data, _status_code, _headers = query_cases_ids_by_filter_with_http_info(opts)
      data
    end

    # Retrieve case id&#39;s that match the provided filter criteria
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum records to return. [1-500]
    # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query.
    # @option opts [String] :offset Starting index of overall result set from which to return ids.
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def query_cases_ids_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.query_cases_ids_by_filter ...'
      end
      allowable_values = ["case.created_time.asc", "case.created_time.desc", "case.id.asc", "case.id.desc", "case.last_modified_time.asc", "case.last_modified_time.desc", "case.status.asc", "case.status.desc", "case.type.asc", "case.type.desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/message-center/queries/cases/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

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
        :operation => :"MessageCenterApi.query_cases_ids_by_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#query_cases_ids_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update an existing case
    # @param body [ApiCaseUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MsaReplyAffectedEntities]
    def update_case(body, opts = {})
      data, _status_code, _headers = update_case_with_http_info(body, opts)
      data
    end

    # update an existing case
    # @param body [ApiCaseUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaReplyAffectedEntities, Integer, Hash)>] MsaReplyAffectedEntities data, response status code and response headers
    def update_case_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageCenterApi.update_case ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessageCenterApi.update_case"
      end
      # resource path
      local_var_path = '/message-center/entities/case/v1'

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
      return_type = opts[:debug_return_type] || 'MsaReplyAffectedEntities'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"MessageCenterApi.update_case",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageCenterApi#update_case\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
