=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::RealTimeResponseAdminApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RealTimeResponseAdminApi' do
  before do
    # run before each test
    @api_instance = Falcon::RealTimeResponseAdminApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RealTimeResponseAdminApi' do
    it 'should create an instance of RealTimeResponseAdminApi' do
      expect(@api_instance).to be_instance_of(Falcon::RealTimeResponseAdminApi)
    end
  end

  # unit tests for batch_admin_cmd
  # Batch executes a RTR administrator command across the hosts mapped to the given batch ID.
  # @param body Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/support/documentation/11/getting-started-guide#rtr_commands): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;cp&#x60; - &#x60;encrypt&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;get&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;kill&#x60; - &#x60;ls&#x60; - &#x60;map&#x60; - &#x60;memdump&#x60; - &#x60;mkdir&#x60; - &#x60;mount&#x60; - &#x60;mv&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;put&#x60; - &#x60;reg query&#x60; - &#x60;reg set&#x60; - &#x60;reg delete&#x60; - &#x60;reg load&#x60; - &#x60;reg unload&#x60; - &#x60;restart&#x60; - &#x60;rm&#x60; - &#x60;run&#x60; - &#x60;runscript&#x60; - &#x60;shutdown&#x60; - &#x60;unmap&#x60; - &#x60;update history&#x60; - &#x60;update install&#x60; - &#x60;update list&#x60; - &#x60;update query&#x60; - &#x60;xmemdump&#x60; - &#x60;zip&#x60;  **&#x60;base_command&#x60;** Active-Responder command type we are going to execute, for example: &#x60;get&#x60; or &#x60;cp&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;batch_id&#x60;** Batch ID to execute the command on.  Received from &#x60;/real-time-response/combined/batch-init-session/v1&#x60;. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;get some_file.txt&#x60; **&#x60;optional_hosts&#x60;** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :timeout Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 10 minutes.
  # @option opts [String] :timeout_duration Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 10 minutes.
  # @option opts [String] :host_timeout_duration Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is &lt; 10 minutes. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. 
  # @return [DomainMultiCommandExecuteResponseWrapper]
  describe 'batch_admin_cmd test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_check_admin_command_status
  # Get status of an executed RTR administrator command on a single host.
  # @param cloud_request_id Cloud Request ID of the executed command to query
  # @param sequence_id Sequence ID that we want to retrieve. Command responses are chunked across sequences
  # @param [Hash] opts the optional parameters
  # @return [DomainStatusResponseWrapper]
  describe 'r_tr_check_admin_command_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_create_put_files
  # Upload a new put-file to use for the RTR &#x60;put&#x60; command.
  # @param file put-file to upload
  # @param description File description
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name File name (if different than actual file name)
  # @option opts [String] :comments_for_audit_log The audit log comment
  # @return [MsaReplyMetaOnly]
  describe 'r_tr_create_put_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_create_scripts
  # Upload a new custom-script to use for the RTR &#x60;runscript&#x60; command.
  # @param description File description
  # @param permission_type Permission for the custom-script. Valid permission values:   - &#x60;private&#x60;, usable by only the user who uploaded it   - &#x60;group&#x60;, usable by all RTR Admins   - &#x60;public&#x60;, usable by all active-responders and RTR admins
  # @param [Hash] opts the optional parameters
  # @option opts [File] :file custom-script file to upload.  These should be powershell scripts.
  # @option opts [String] :name File name (if different than actual file name)
  # @option opts [String] :comments_for_audit_log The audit log comment
  # @option opts [String] :content The script text that you want to use to upload
  # @option opts [Array<String>] :platform Platforms for the file. Currently supports: windows, mac, linux, . If no platform is provided, it will default to &#39;windows&#39;
  # @return [MsaReplyMetaOnly]
  describe 'r_tr_create_scripts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_delete_put_files
  # Delete a put-file based on the ID given.  Can only delete one file at a time.
  # @param ids File id
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyMetaOnly]
  describe 'r_tr_delete_put_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_delete_scripts
  # Delete a custom-script based on the ID given.  Can only delete one script at a time.
  # @param ids File id
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyMetaOnly]
  describe 'r_tr_delete_scripts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_execute_admin_command
  # Execute a RTR administrator command on a single host.
  # @param body Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/support/documentation/11/getting-started-guide#rtr_commands): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;cp&#x60; - &#x60;encrypt&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;get&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;kill&#x60; - &#x60;ls&#x60; - &#x60;map&#x60; - &#x60;memdump&#x60; - &#x60;mkdir&#x60; - &#x60;mount&#x60; - &#x60;mv&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;put&#x60; - &#x60;reg query&#x60; - &#x60;reg set&#x60; - &#x60;reg delete&#x60; - &#x60;reg load&#x60; - &#x60;reg unload&#x60; - &#x60;restart&#x60; - &#x60;rm&#x60; - &#x60;run&#x60; - &#x60;runscript&#x60; - &#x60;shutdown&#x60; - &#x60;unmap&#x60; - &#x60;update history&#x60; - &#x60;update install&#x60; - &#x60;update list&#x60; - &#x60;update query&#x60; - &#x60;xmemdump&#x60; - &#x60;zip&#x60;  Required values.  The rest of the fields are unused. **&#x60;base_command&#x60;** Active-Responder command type we are going to execute, for example: &#x60;get&#x60; or &#x60;cp&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;get some_file.txt&#x60; **&#x60;session_id&#x60;** RTR session ID to run the command on
  # @param [Hash] opts the optional parameters
  # @return [DomainCommandExecuteResponseWrapper]
  describe 'r_tr_execute_admin_command test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_get_put_files
  # Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command.
  # @param ids File IDs
  # @param [Hash] opts the optional parameters
  # @return [BinservclientMsaPFResponse]
  describe 'r_tr_get_put_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_get_put_files_v2
  # Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command.
  # @param ids File IDs
  # @param [Hash] opts the optional parameters
  # @return [DomainMsaPFResponseV2]
  describe 'r_tr_get_put_files_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_get_scripts
  # Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command.
  # @param ids File IDs
  # @param [Hash] opts the optional parameters
  # @return [BinservclientMsaPFResponse]
  describe 'r_tr_get_scripts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_get_scripts_v2
  # Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command.
  # @param ids File IDs
  # @param [Hash] opts the optional parameters
  # @return [DomainMsaPFResponseV2]
  describe 'r_tr_get_scripts_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_list_put_files
  # Get a list of put-file ID&#39;s that are available to the user for the &#x60;put&#x60; command.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @option opts [String] :sort Sort by spec. Ex: &#39;created_at|asc&#39;.
  # @return [BinservclientMsaPutFileResponse]
  describe 'r_tr_list_put_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_list_scripts
  # Get a list of custom-script ID&#39;s that are available to the user for the &#x60;runscript&#x60; command.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @option opts [Integer] :limit Number of ids to return.
  # @option opts [String] :sort Sort by spec. Ex: &#39;created_at|asc&#39;.
  # @return [BinservclientMsaPutFileResponse]
  describe 'r_tr_list_scripts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for r_tr_update_scripts
  # Upload a new scripts to replace an existing one.
  # @param id ID to update
  # @param [Hash] opts the optional parameters
  # @option opts [File] :file custom-script file to upload.  These should be powershell scripts.
  # @option opts [String] :description File description
  # @option opts [String] :name File name (if different than actual file name)
  # @option opts [String] :comments_for_audit_log The audit log comment
  # @option opts [String] :permission_type Permission for the custom-script. Valid permission values:   - &#x60;private&#x60;, usable by only the user who uploaded it   - &#x60;group&#x60;, usable by all RTR Admins   - &#x60;public&#x60;, usable by all active-responders and RTR admins
  # @option opts [String] :content The script text that you want to use to upload
  # @option opts [Array<String>] :platform Platforms for the file. Currently supports: windows, mac, 
  # @return [MsaReplyMetaOnly]
  describe 'r_tr_update_scripts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
