=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Falcon
  class SampleUploadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Removes a sample, including file, meta and submissions from the collection
    # @param ids [String] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @return [MsaQueryResponse]
    def delete_sample_v3(ids, opts = {})
      data, _status_code, _headers = delete_sample_v3_with_http_info(ids, opts)
      data
    end

    # Removes a sample, including file, meta and submissions from the collection
    # @param ids [String] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MsaQueryResponse, Integer, Hash)>] MsaQueryResponse data, response status code and response headers
    def delete_sample_v3_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SampleUploadsApi.delete_sample_v3 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SampleUploadsApi.delete_sample_v3"
      end
      # resource path
      local_var_path = '/samples/entities/samples/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

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
        :operation => :"SampleUploadsApi.delete_sample_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SampleUploadsApi#delete_sample_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves the file associated with the given ID (SHA256)
    # @param ids [String] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :password_protected Flag whether the sample should be zipped and password protected with pass&#x3D;&#39;infected&#39; (default to false)
    # @return [String]
    def get_sample_v3(ids, opts = {})
      data, _status_code, _headers = get_sample_v3_with_http_info(ids, opts)
      data
    end

    # Retrieves the file associated with the given ID (SHA256)
    # @param ids [String] The file SHA256.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :password_protected Flag whether the sample should be zipped and password protected with pass&#x3D;&#39;infected&#39; (default to false)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_sample_v3_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SampleUploadsApi.get_sample_v3 ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SampleUploadsApi.get_sample_v3"
      end
      # resource path
      local_var_path = '/samples/entities/samples/v3'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids
      query_params[:'password_protected'] = opts[:'password_protected'] if !opts[:'password_protected'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SampleUploadsApi.get_sample_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SampleUploadsApi#get_sample_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.
    # @param sample [File] Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;.
    # @param file_name [String] Name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :comment A descriptive comment to identify the file for other users.
    # @option opts [Boolean] :is_confidential Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. (default to true)
    # @return [ClientSampleMetadataResponseV2]
    def upload_sample_v3(sample, file_name, opts = {})
      data, _status_code, _headers = upload_sample_v3_with_http_info(sample, file_name, opts)
      data
    end

    # Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.
    # @param sample [File] Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;.
    # @param file_name [String] Name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :comment A descriptive comment to identify the file for other users.
    # @option opts [Boolean] :is_confidential Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. (default to true)
    # @return [Array<(ClientSampleMetadataResponseV2, Integer, Hash)>] ClientSampleMetadataResponseV2 data, response status code and response headers
    def upload_sample_v3_with_http_info(sample, file_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SampleUploadsApi.upload_sample_v3 ...'
      end
      # verify the required parameter 'sample' is set
      if @api_client.config.client_side_validation && sample.nil?
        fail ArgumentError, "Missing the required parameter 'sample' when calling SampleUploadsApi.upload_sample_v3"
      end
      # verify the required parameter 'file_name' is set
      if @api_client.config.client_side_validation && file_name.nil?
        fail ArgumentError, "Missing the required parameter 'file_name' when calling SampleUploadsApi.upload_sample_v3"
      end
      # resource path
      local_var_path = '/samples/entities/samples/v3'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['sample'] = sample
      form_params['file_name'] = file_name
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['is_confidential'] = opts[:'is_confidential'] if !opts[:'is_confidential'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ClientSampleMetadataResponseV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"SampleUploadsApi.upload_sample_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SampleUploadsApi#upload_sample_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end