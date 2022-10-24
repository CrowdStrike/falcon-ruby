=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::SpotlightEvaluationLogicApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SpotlightEvaluationLogicApi' do
  before do
    # run before each test
    @api_instance = Falcon::SpotlightEvaluationLogicApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SpotlightEvaluationLogicApi' do
    it 'should create an instance of SpotlightEvaluationLogicApi' do
      expect(@api_instance).to be_instance_of(Falcon::SpotlightEvaluationLogicApi)
    end
  end

  # unit tests for combined_query_evaluation_logic
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.
  # @param filter FQL query specifying the filter parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [Integer] :limit Maximum number of entities to return.
  # @option opts [String] :sort Sort evaluation logic by their properties.
  # @return [DomainSPAPIEvaluationLogicCombinedResponseV1]
  describe 'combined_query_evaluation_logic test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_evaluation_logic
  # Get details on evaluation logic items by providing one or more IDs.
  # @param ids One or more evaluation logic IDs.
  # @param [Hash] opts the optional parameters
  # @return [DomainSPAPIEvaluationLogicEntitiesResponseV1]
  describe 'get_evaluation_logic test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_evaluation_logic
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.
  # @param filter FQL query specifying the filter parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results.
  # @option opts [Integer] :limit Maximum number of entities to return.
  # @option opts [String] :sort Sort evaluation logic by their properties.
  # @return [DomainSPAPIQueryResponse]
  describe 'query_evaluation_logic test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end