=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class Oauth2Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate an OAuth2 access token
    # @param client_id [String] The API client ID to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
    # @param client_secret [String] The API client secret to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member_cid For MSSP Master CIDs, optionally lock the token to act on behalf of this member CID
    # @return [DomainAccessTokenResponseV1]
    def oauth2_access_token(client_id, client_secret, opts = {})
      data, _status_code, _headers = oauth2_access_token_with_http_info(client_id, client_secret, opts)
      data
    end

    # Generate an OAuth2 access token
    # @param client_id [String] The API client ID to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
    # @param client_secret [String] The API client secret to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member_cid For MSSP Master CIDs, optionally lock the token to act on behalf of this member CID
    # @return [Array<(DomainAccessTokenResponseV1, Integer, Hash)>] DomainAccessTokenResponseV1 data, response status code and response headers
    def oauth2_access_token_with_http_info(client_id, client_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Oauth2Api.oauth2_access_token ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling Oauth2Api.oauth2_access_token"
      end
      # verify the required parameter 'client_secret' is set
      if @api_client.config.client_side_validation && client_secret.nil?
        fail ArgumentError, "Missing the required parameter 'client_secret' when calling Oauth2Api.oauth2_access_token"
      end
      # resource path
      local_var_path = '/oauth2/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['client_id'] = client_id
      form_params['client_secret'] = client_secret
      form_params['member_cid'] = opts[:'member_cid'] if !opts[:'member_cid'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DomainAccessTokenResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Oauth2Api.oauth2_access_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Oauth2Api#oauth2_access_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.
    # @param token [String] The OAuth2 access token you want to revoke.  Include your API client ID and secret in basic auth format (&#x60;Authorization: basic &lt;encoded API client ID and secret&gt;&#x60;) in your request header.
    # @param [Hash] opts the optional parameters
    # @return [MsaReplyMetaOnly]
    def oauth2_revoke_token(token, opts = {})
      data, _status_code, _headers = oauth2_revoke_token_with_http_info(token, opts)
      data
    end

    # Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.
    # @param token [String] The OAuth2 access token you want to revoke.  Include your API client ID and secret in basic auth format (&#x60;Authorization: basic &lt;encoded API client ID and secret&gt;&#x60;) in your request header.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaReplyMetaOnly, Integer, Hash)>] MsaReplyMetaOnly data, response status code and response headers
    def oauth2_revoke_token_with_http_info(token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Oauth2Api.oauth2_revoke_token ...'
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling Oauth2Api.oauth2_revoke_token"
      end
      # resource path
      local_var_path = '/oauth2/revoke'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['token'] = token

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaReplyMetaOnly'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"Oauth2Api.oauth2_revoke_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Oauth2Api#oauth2_revoke_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end