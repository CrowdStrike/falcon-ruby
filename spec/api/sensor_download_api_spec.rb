=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::SensorDownloadApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SensorDownloadApi' do
  before do
    # run before each test
    @api_instance = Falcon::SensorDownloadApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SensorDownloadApi' do
    it 'should create an instance of SensorDownloadApi' do
      expect(@api_instance).to be_instance_of(Falcon::SensorDownloadApi)
    end
  end

  # unit tests for download_sensor_installer_by_id
  # Download sensor installer by SHA256 ID
  # @param id SHA256 of the installer to download
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'download_sensor_installer_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_combined_sensor_installers_by_query
  # Get sensor installer details by provided query
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
  # @return [DomainSensorInstallersV1]
  describe 'get_combined_sensor_installers_by_query test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sensor_installers_by_query
  # Get sensor installer IDs by provided query
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  # @option opts [Integer] :limit The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  # @option opts [String] :sort Sort items using their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;version|asc&lt;/li&gt;&lt;li&gt;release_date|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter items using a query in Falcon Query Language (FQL). An asterisk wildcard * includes all results.  Common filter options include: &lt;ul&gt;&lt;li&gt;platform:\&quot;windows\&quot;&lt;/li&gt;&lt;li&gt;version:&gt;\&quot;5.2\&quot;&lt;/li&gt;&lt;/ul&gt;
  # @return [MsaQueryResponse]
  describe 'get_sensor_installers_by_query test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sensor_installers_ccidby_query
  # Get CCID to use with sensor installers
  # @param [Hash] opts the optional parameters
  # @return [MsaQueryResponse]
  describe 'get_sensor_installers_ccidby_query test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sensor_installers_entities
  # Get sensor installer details by provided SHA256 IDs
  # @param ids The IDs of the installers
  # @param [Hash] opts the optional parameters
  # @return [DomainSensorInstallersV1]
  describe 'get_sensor_installers_entities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end