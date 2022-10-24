=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class QuickScanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
    # @param ids [Array<String>] ID of a submitted scan
    # @param [Hash] opts the optional parameters
    # @return [MlscannerScanV1Response]
    def get_scans(ids, opts = {})
      data, _status_code, _headers = get_scans_with_http_info(ids, opts)
      data
    end

    # Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
    # @param ids [Array<String>] ID of a submitted scan
    # @param [Hash] opts the optional parameters
    # @return [Array<(MlscannerScanV1Response, Integer, Hash)>] MlscannerScanV1Response data, response status code and response headers
    def get_scans_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuickScanApi.get_scans ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling QuickScanApi.get_scans"
      end
      # resource path
      local_var_path = '/scanner/entities/scans/v1'

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
      return_type = opts[:debug_return_type] || 'MlscannerScanV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"QuickScanApi.get_scans",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuickScanApi#get_scans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get scans aggregations as specified via json in request body.
    # @param body [MsaAggregateQueryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_scans_aggregates(body, opts = {})
      get_scans_aggregates_with_http_info(body, opts)
      nil
    end

    # Get scans aggregations as specified via json in request body.
    # @param body [MsaAggregateQueryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_scans_aggregates_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuickScanApi.get_scans_aggregates ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling QuickScanApi.get_scans_aggregates"
      end
      # resource path
      local_var_path = '/scanner/aggregates/scans/GET/v1'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"QuickScanApi.get_scans_aggregates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuickScanApi#get_scans_aggregates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [String] :offset The offset to start retrieving submissions from.
    # @option opts [Integer] :limit Maximum number of volume IDs to return. Max: 5000.
    # @option opts [String] :sort Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;.
    # @return [MlscannerQueryResponse]
    def query_submissions_mixin0(opts = {})
      data, _status_code, _headers = query_submissions_mixin0_with_http_info(opts)
      data
    end

    # Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
    # @option opts [String] :offset The offset to start retrieving submissions from.
    # @option opts [Integer] :limit Maximum number of volume IDs to return. Max: 5000.
    # @option opts [String] :sort Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;.
    # @return [Array<(MlscannerQueryResponse, Integer, Hash)>] MlscannerQueryResponse data, response status code and response headers
    def query_submissions_mixin0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuickScanApi.query_submissions_mixin0 ...'
      end
      # resource path
      local_var_path = '/scanner/queries/scans/v1'

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
      return_type = opts[:debug_return_type] || 'MlscannerQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"QuickScanApi.query_submissions_mixin0",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuickScanApi#query_submissions_mixin0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
    # @param body [MlscannerSamplesScanParameters] Submit a batch of SHA256s for ml scanning. The samples must have been previously uploaded through &#x60;/samples/entities/samples/v3&#x60;
    # @param [Hash] opts the optional parameters
    # @return [MlscannerQueryResponse]
    def scan_samples(body, opts = {})
      data, _status_code, _headers = scan_samples_with_http_info(body, opts)
      data
    end

    # Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute
    # @param body [MlscannerSamplesScanParameters] Submit a batch of SHA256s for ml scanning. The samples must have been previously uploaded through &#x60;/samples/entities/samples/v3&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(MlscannerQueryResponse, Integer, Hash)>] MlscannerQueryResponse data, response status code and response headers
    def scan_samples_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuickScanApi.scan_samples ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling QuickScanApi.scan_samples"
      end
      # resource path
      local_var_path = '/scanner/entities/scans/v1'

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
      return_type = opts[:debug_return_type] || 'MlscannerQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"QuickScanApi.scan_samples",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuickScanApi#scan_samples\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end