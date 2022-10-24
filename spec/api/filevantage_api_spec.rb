=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::FilevantageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FilevantageApi' do
  before do
    # run before each test
    @api_instance = Falcon::FilevantageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilevantageApi' do
    it 'should create an instance of FilevantageApi' do
      expect(@api_instance).to be_instance_of(Falcon::FilevantageApi)
    end
  end

  # unit tests for get_changes
  # Retrieve information on changes
  # Retrieve key attributes of Falcon FileVantage changes for the specified ids.
  # @param ids Comma separated values of change ids
  # @param [Hash] opts the optional parameters
  # @return [ExternalGetChangesResponse]
  describe 'get_changes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_changes
  # Returns one or more change IDs
  # Returns a list of Falcon FileVantage change IDs filtered, sorted and limited by the query parameters provided
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The first change index to return in the response. If not provided it will default to &#39;0&#39;. Use with the &#x60;limit&#x60; parameter to manage pagination of results.
  # @option opts [Integer] :limit The maximum number of changes to return in the response (default: 100; max: 500). Use with the &#x60;offset&#x60; parameter to manage pagination of results
  # @option opts [String] :sort Sort changes using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)    Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. The full list of allowed sorting options can be reviewed in our API documentation.
  # @option opts [String] :filter Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.host_name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation.
  # @return [MsaQueryResponse]
  describe 'query_changes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
