=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::MsspApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MsspApi' do
  before do
    # run before each test
    @api_instance = Falcon::MsspApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MsspApi' do
    it 'should create an instance of MsspApi' do
      expect(@api_instance).to be_instance_of(Falcon::MsspApi)
    end
  end

  # unit tests for add_cid_group_members
  # Add new CID Group member.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'add_cid_group_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_role
  # Assign new MSSP Role(s) between User Group and CID Group. It does not revoke existing role(s) between User Group and CID Group. User Group ID and CID Group ID have to be specified in request. 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainMSSPRoleResponseV1]
  describe 'add_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_user_group_members
  # Add new User Group member. Maximum 500 members allowed per User Group.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'add_user_group_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_cid_groups
  # Create new CID Group(s). Maximum 500 CID Group(s) allowed.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'create_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_user_groups
  # Create new User Group(s). Maximum 500 User Group(s) allowed per customer.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'create_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_cid_group_members
  # Delete CID Group members entry.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'delete_cid_group_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_cid_groups
  # Delete CID groups by ID.
  # @param cid_group_ids CID group ids to delete
  # @param [Hash] opts the optional parameters
  # @return [MsaEntitiesResponse]
  describe 'delete_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_group_members
  # Delete User Group members entry.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'delete_user_group_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_groups
  # Delete user groups by ID.
  # @param user_group_ids User group IDs to delete
  # @param [Hash] opts the optional parameters
  # @return [MsaEntitiesResponse]
  describe 'delete_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for deleted_roles
  # Delete MSSP Role assignment(s) between User Group and CID Group. User Group ID and CID Group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID Group is dissolved completely (if no roles specified).
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainMSSPRoleResponseV1]
  describe 'deleted_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_children
  # Get link to child customer by child CID(s)
  # @param ids CID of a child customer
  # @param [Hash] opts the optional parameters
  # @return [DomainChildrenResponseV1]
  describe 'get_children test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cid_group_by_id
  # Get CID groups by ID.
  # @param cid_group_ids CID group IDs to be searched on
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'get_cid_group_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cid_group_members_by
  # Get CID group members by CID group ID.
  # @param cid_group_ids CID group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'get_cid_group_members_by test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_roles_by_id
  # Get MSSP Role assignment(s). MSSP Role assignment is of the format :.
  # @param ids MSSP Role assignment is of the format &lt;user_group_id&gt;:&lt;cid_group_id&gt;
  # @param [Hash] opts the optional parameters
  # @return [DomainMSSPRoleResponseV1]
  describe 'get_roles_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_group_members_by_id
  # Get user group members by user group ID.
  # @param user_group_ids User group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'get_user_group_members_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_groups_by_id
  # Get user groups by ID.
  # @param user_group_ids User Group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'get_user_groups_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_children
  # Query for customers linked as children
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Number of ids to return
  # @return [MsaQueryResponse]
  describe 'query_children test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_cid_group_members
  # Query a CID groups members by associated CID.
  # @param cid CID to lookup associated CID group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return id
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [MsaQueryResponse]
  describe 'query_cid_group_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_cid_groups
  # Query CID Groups.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Name to lookup groups for
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Number of ids to return
  # @return [MsaQueryResponse]
  describe 'query_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_roles
  # Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_group_id User group ID to fetch MSSP role for
  # @option opts [String] :cid_group_id CID group ID to fetch MSSP role for
  # @option opts [String] :role_id Role ID to fetch MSSP role for
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [MsaQueryResponse]
  describe 'query_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_user_group_members
  # Query User Group member by User UUID.
  # @param user_uuid User UUID to lookup associated user group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Number of ids to return
  # @return [MsaQueryResponse]
  describe 'query_user_group_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_user_groups
  # Query User Groups.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Name to lookup groups for
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Number of ids to return
  # @return [MsaQueryResponse]
  describe 'query_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_cid_groups
  # Update existing CID Group(s). CID Group ID is expected for each CID Group definition provided in request body. CID Group member(s) remain unaffected.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'update_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_groups
  # Update existing User Group(s). User Group ID is expected for each User Group definition provided in request body. User Group member(s) remain unaffected.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'update_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
