=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class KubernetesProtectionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new AWS account in our system for a customer and generates the installation script
    # @param body [K8sregCreateAWSAccReq] 
    # @param [Hash] opts the optional parameters
    # @return [K8sregCreateAWSAccReq]
    def create_aws_account(body, opts = {})
      data, _status_code, _headers = create_aws_account_with_http_info(body, opts)
      data
    end

    # Creates a new AWS account in our system for a customer and generates the installation script
    # @param body [K8sregCreateAWSAccReq] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(K8sregCreateAWSAccReq, Integer, Hash)>] K8sregCreateAWSAccReq data, response status code and response headers
    def create_aws_account_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.create_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KubernetesProtectionApi.create_aws_account"
      end
      # resource path
      local_var_path = '/kubernetes-protection/entities/accounts/aws/v1'

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
      return_type = opts[:debug_return_type] || 'K8sregCreateAWSAccReq'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.create_aws_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#create_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete AWS accounts.
    # @param ids [Array<String>] AWS Account IDs
    # @param [Hash] opts the optional parameters
    # @return [MsaMetaInfo]
    def delete_aws_accounts_mixin0(ids, opts = {})
      data, _status_code, _headers = delete_aws_accounts_mixin0_with_http_info(ids, opts)
      data
    end

    # Delete AWS accounts.
    # @param ids [Array<String>] AWS Account IDs
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaMetaInfo, Integer, Hash)>] MsaMetaInfo data, response status code and response headers
    def delete_aws_accounts_mixin0_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.delete_aws_accounts_mixin0 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling KubernetesProtectionApi.delete_aws_accounts_mixin0"
      end
      # resource path
      local_var_path = '/kubernetes-protection/entities/accounts/aws/v1'

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
      return_type = opts[:debug_return_type] || 'MsaMetaInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.delete_aws_accounts_mixin0",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#delete_aws_accounts_mixin0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Provides a list of AWS accounts.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids AWS Account IDs
    # @option opts [String] :status Filter by account status
    # @option opts [Integer] :limit Limit returned accounts
    # @option opts [Integer] :offset Offset returned accounts
    # @return [K8sregGetAWSAccountsResp]
    def get_aws_accounts_mixin0(opts = {})
      data, _status_code, _headers = get_aws_accounts_mixin0_with_http_info(opts)
      data
    end

    # Provides a list of AWS accounts.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids AWS Account IDs
    # @option opts [String] :status Filter by account status
    # @option opts [Integer] :limit Limit returned accounts
    # @option opts [Integer] :offset Offset returned accounts
    # @return [Array<(K8sregGetAWSAccountsResp, Integer, Hash)>] K8sregGetAWSAccountsResp data, response status code and response headers
    def get_aws_accounts_mixin0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.get_aws_accounts_mixin0 ...'
      end
      pattern = Regexp.new(/^(provisioned|operational)$/)
      if @api_client.config.client_side_validation && !opts[:'status'].nil? && opts[:'status'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"status\"]' when calling KubernetesProtectionApi.get_aws_accounts_mixin0, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KubernetesProtectionApi.get_aws_accounts_mixin0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KubernetesProtectionApi.get_aws_accounts_mixin0, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling KubernetesProtectionApi.get_aws_accounts_mixin0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/kubernetes-protection/entities/accounts/aws/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
      return_type = opts[:debug_return_type] || 'K8sregGetAWSAccountsResp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.get_aws_accounts_mixin0",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#get_aws_accounts_mixin0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Provides the clusters acknowledged by the Kubernetes Protection service
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :cluster_names Cluster name. For EKS it will be cluster ARN.
    # @option opts [Array<String>] :account_ids Cluster Account id. For EKS it will be AWS account ID.
    # @option opts [Array<String>] :locations Cloud location
    # @option opts [String] :cluster_service Cluster Service
    # @option opts [Integer] :limit Limit returned accounts
    # @option opts [Integer] :offset Offset returned accounts
    # @return [K8sregGetClustersResp]
    def get_clusters(opts = {})
      data, _status_code, _headers = get_clusters_with_http_info(opts)
      data
    end

    # Provides the clusters acknowledged by the Kubernetes Protection service
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :cluster_names Cluster name. For EKS it will be cluster ARN.
    # @option opts [Array<String>] :account_ids Cluster Account id. For EKS it will be AWS account ID.
    # @option opts [Array<String>] :locations Cloud location
    # @option opts [String] :cluster_service Cluster Service
    # @option opts [Integer] :limit Limit returned accounts
    # @option opts [Integer] :offset Offset returned accounts
    # @return [Array<(K8sregGetClustersResp, Integer, Hash)>] K8sregGetClustersResp data, response status code and response headers
    def get_clusters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.get_clusters ...'
      end
      allowable_values = ["eks"]
      if @api_client.config.client_side_validation && opts[:'cluster_service'] && !allowable_values.include?(opts[:'cluster_service'])
        fail ArgumentError, "invalid value for \"cluster_service\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KubernetesProtectionApi.get_clusters, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KubernetesProtectionApi.get_clusters, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling KubernetesProtectionApi.get_clusters, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/kubernetes-protection/entities/kubernetes/clusters/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cluster_names'] = @api_client.build_collection_param(opts[:'cluster_names'], :csv) if !opts[:'cluster_names'].nil?
      query_params[:'account_ids'] = @api_client.build_collection_param(opts[:'account_ids'], :csv) if !opts[:'account_ids'].nil?
      query_params[:'locations'] = @api_client.build_collection_param(opts[:'locations'], :csv) if !opts[:'locations'].nil?
      query_params[:'cluster_service'] = opts[:'cluster_service'] if !opts[:'cluster_service'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
      return_type = opts[:debug_return_type] || 'K8sregGetClustersResp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.get_clusters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#get_clusters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart
    # @param cluster_name [String] Cluster name. For EKS it will be cluster ARN.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_helm_values_yaml(cluster_name, opts = {})
      data, _status_code, _headers = get_helm_values_yaml_with_http_info(cluster_name, opts)
      data
    end

    # Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart
    # @param cluster_name [String] Cluster name. For EKS it will be cluster ARN.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_helm_values_yaml_with_http_info(cluster_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.get_helm_values_yaml ...'
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling KubernetesProtectionApi.get_helm_values_yaml"
      end
      # resource path
      local_var_path = '/kubernetes-protection/entities/integration/agent/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cluster_name'] = cluster_name

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/yaml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.get_helm_values_yaml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#get_helm_values_yaml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Provides the cloud locations acknowledged by the Kubernetes Protection service
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :clouds Cloud Provider
    # @return [K8sregGetLocationsResp]
    def get_locations(opts = {})
      data, _status_code, _headers = get_locations_with_http_info(opts)
      data
    end

    # Provides the cloud locations acknowledged by the Kubernetes Protection service
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :clouds Cloud Provider
    # @return [Array<(K8sregGetLocationsResp, Integer, Hash)>] K8sregGetLocationsResp data, response status code and response headers
    def get_locations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.get_locations ...'
      end
      allowable_values = []
      if @api_client.config.client_side_validation && opts[:'clouds'] && !opts[:'clouds'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"clouds\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/kubernetes-protection/entities/cloud-locations/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'clouds'] = @api_client.build_collection_param(opts[:'clouds'], :csv) if !opts[:'clouds'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'K8sregGetLocationsResp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.get_locations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#get_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Regenerate API key for docker registry integrations
    # @param [Hash] opts the optional parameters
    # @return [K8sregRegenAPIKeyResp]
    def regenerate_api_key(opts = {})
      data, _status_code, _headers = regenerate_api_key_with_http_info(opts)
      data
    end

    # Regenerate API key for docker registry integrations
    # @param [Hash] opts the optional parameters
    # @return [Array<(K8sregRegenAPIKeyResp, Integer, Hash)>] K8sregRegenAPIKeyResp data, response status code and response headers
    def regenerate_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.regenerate_api_key ...'
      end
      # resource path
      local_var_path = '/kubernetes-protection/entities/integration/api-key/v1'

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
      return_type = opts[:debug_return_type] || 'K8sregRegenAPIKeyResp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.regenerate_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#regenerate_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Triggers a dry run or a full scan of a customer's kubernetes footprint
    # @param scan_type [String] Scan Type to do
    # @param [Hash] opts the optional parameters
    # @return [MsaBaseEntitiesResponse]
    def trigger_scan(scan_type, opts = {})
      data, _status_code, _headers = trigger_scan_with_http_info(scan_type, opts)
      data
    end

    # Triggers a dry run or a full scan of a customer&#39;s kubernetes footprint
    # @param scan_type [String] Scan Type to do
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaBaseEntitiesResponse, Integer, Hash)>] MsaBaseEntitiesResponse data, response status code and response headers
    def trigger_scan_with_http_info(scan_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.trigger_scan ...'
      end
      # verify the required parameter 'scan_type' is set
      if @api_client.config.client_side_validation && scan_type.nil?
        fail ArgumentError, "Missing the required parameter 'scan_type' when calling KubernetesProtectionApi.trigger_scan"
      end
      # verify enum value
      allowable_values = ["cluster-refresh", "dry-run", "full"]
      if @api_client.config.client_side_validation && !allowable_values.include?(scan_type)
        fail ArgumentError, "invalid value for \"scan_type\", must be one of #{allowable_values}"
      end
      pattern = Regexp.new(/^(dry-run|full|cluster-refresh)$/)
      if @api_client.config.client_side_validation && scan_type !~ pattern
        fail ArgumentError, "invalid value for 'scan_type' when calling KubernetesProtectionApi.trigger_scan, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/kubernetes-protection/entities/scan/trigger/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'scan_type'] = scan_type

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaBaseEntitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.trigger_scan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#trigger_scan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the AWS account per the query parameters provided
    # @param ids [Array<String>] AWS Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :region Default Region for Account Automation
    # @return [MsaBaseEntitiesResponse]
    def update_aws_account(ids, opts = {})
      data, _status_code, _headers = update_aws_account_with_http_info(ids, opts)
      data
    end

    # Updates the AWS account per the query parameters provided
    # @param ids [Array<String>] AWS Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :region Default Region for Account Automation
    # @return [Array<(MsaBaseEntitiesResponse, Integer, Hash)>] MsaBaseEntitiesResponse data, response status code and response headers
    def update_aws_account_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KubernetesProtectionApi.update_aws_account ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling KubernetesProtectionApi.update_aws_account"
      end
      pattern = Regexp.new(/^[a-z\d-]+$/)
      if @api_client.config.client_side_validation && !opts[:'region'].nil? && opts[:'region'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"region\"]' when calling KubernetesProtectionApi.update_aws_account, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/kubernetes-protection/entities/accounts/aws/v1'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(ids, :csv)
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MsaBaseEntitiesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"KubernetesProtectionApi.update_aws_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KubernetesProtectionApi#update_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
