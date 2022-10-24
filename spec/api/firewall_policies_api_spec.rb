=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::FirewallPoliciesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FirewallPoliciesApi' do
  before do
    # run before each test
    @api_instance = Falcon::FirewallPoliciesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FirewallPoliciesApi' do
    it 'should create an instance of FirewallPoliciesApi' do
      expect(@api_instance).to be_instance_of(Falcon::FirewallPoliciesApi)
    end
  end

  # unit tests for create_firewall_policies
  # Create Firewall Policies by specifying details about the policy to create
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :clone_id The policy ID to be cloned from
  # @return [ResponsesFirewallPoliciesV1]
  describe 'create_firewall_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_firewall_policies
  # Delete a set of Firewall Policies by specifying their IDs
  # @param ids The IDs of the Firewall Policies to delete
  # @param [Hash] opts the optional parameters
  # @return [MsaQueryResponse]
  describe 'delete_firewall_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_firewall_policies
  # Retrieve a set of Firewall Policies by specifying their IDs
  # @param ids The IDs of the Firewall Policies to return
  # @param [Hash] opts the optional parameters
  # @return [ResponsesFirewallPoliciesV1]
  describe 'get_firewall_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for perform_firewall_policies_action
  # Perform the specified action on the Firewall Policies specified in the request
  # @param action_name The action to perform
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ResponsesFirewallPoliciesV1]
  describe 'perform_firewall_policies_action test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_combined_firewall_policies
  # Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by
  # @return [ResponsesFirewallPoliciesV1]
  describe 'query_combined_firewall_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_combined_firewall_policy_members
  # Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id The ID of the Firewall Policy to search for members of
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by
  # @return [ResponsesPolicyMembersRespV1]
  describe 'query_combined_firewall_policy_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_firewall_policies
  # Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by
  # @return [MsaQueryResponse]
  describe 'query_firewall_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_firewall_policy_members
  # Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id The ID of the Firewall Policy to search for members of
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by
  # @return [MsaQueryResponse]
  describe 'query_firewall_policy_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_firewall_policies_precedence
  # Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MsaQueryResponse]
  describe 'set_firewall_policies_precedence test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_firewall_policies
  # Update Firewall Policies by specifying the ID of the policy and details to update
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ResponsesFirewallPoliciesV1]
  describe 'update_firewall_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end