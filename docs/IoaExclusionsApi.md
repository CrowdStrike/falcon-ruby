# Falcon::IoaExclusionsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ioa_exclusions_v1**](IoaExclusionsApi.md#create_ioa_exclusions_v1) | **POST** /policy/entities/ioa-exclusions/v1 | Create the IOA exclusions |
| [**delete_ioa_exclusions_v1**](IoaExclusionsApi.md#delete_ioa_exclusions_v1) | **DELETE** /policy/entities/ioa-exclusions/v1 | Delete the IOA exclusions by id |
| [**get_ioa_exclusions_v1**](IoaExclusionsApi.md#get_ioa_exclusions_v1) | **GET** /policy/entities/ioa-exclusions/v1 | Get a set of IOA Exclusions by specifying their IDs |
| [**query_ioa_exclusions_v1**](IoaExclusionsApi.md#query_ioa_exclusions_v1) | **GET** /policy/queries/ioa-exclusions/v1 | Search for IOA exclusions. |
| [**update_ioa_exclusions_v1**](IoaExclusionsApi.md#update_ioa_exclusions_v1) | **PATCH** /policy/entities/ioa-exclusions/v1 | Update the IOA exclusions |


## create_ioa_exclusions_v1

> <ResponsesIoaExclusionRespV1> create_ioa_exclusions_v1(body)

Create the IOA exclusions

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IoaExclusionsApi.new
body = Falcon::RequestsIoaExclusionCreateReqV1.new({cl_regex: 'cl_regex_example', description: 'description_example', detection_json: 'detection_json_example', groups: ['groups_example'], ifn_regex: 'ifn_regex_example', name: 'name_example', pattern_id: 'pattern_id_example', pattern_name: 'pattern_name_example'}) # RequestsIoaExclusionCreateReqV1 | 

begin
  # Create the IOA exclusions
  result = api_instance.create_ioa_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->create_ioa_exclusions_v1: #{e}"
end
```

#### Using the create_ioa_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesIoaExclusionRespV1>, Integer, Hash)> create_ioa_exclusions_v1_with_http_info(body)

```ruby
begin
  # Create the IOA exclusions
  data, status_code, headers = api_instance.create_ioa_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesIoaExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->create_ioa_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsIoaExclusionCreateReqV1**](RequestsIoaExclusionCreateReqV1.md) |  |  |

### Return type

[**ResponsesIoaExclusionRespV1**](ResponsesIoaExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ioa_exclusions_v1

> <MsaQueryResponse> delete_ioa_exclusions_v1(ids, opts)

Delete the IOA exclusions by id

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IoaExclusionsApi.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to delete
opts = {
  comment: 'comment_example' # String | Explains why this exclusions was deleted
}

begin
  # Delete the IOA exclusions by id
  result = api_instance.delete_ioa_exclusions_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->delete_ioa_exclusions_v1: #{e}"
end
```

#### Using the delete_ioa_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_ioa_exclusions_v1_with_http_info(ids, opts)

```ruby
begin
  # Delete the IOA exclusions by id
  data, status_code, headers = api_instance.delete_ioa_exclusions_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->delete_ioa_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to delete |  |
| **comment** | **String** | Explains why this exclusions was deleted | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ioa_exclusions_v1

> <ResponsesIoaExclusionRespV1> get_ioa_exclusions_v1(ids)

Get a set of IOA Exclusions by specifying their IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IoaExclusionsApi.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to retrieve

begin
  # Get a set of IOA Exclusions by specifying their IDs
  result = api_instance.get_ioa_exclusions_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->get_ioa_exclusions_v1: #{e}"
end
```

#### Using the get_ioa_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesIoaExclusionRespV1>, Integer, Hash)> get_ioa_exclusions_v1_with_http_info(ids)

```ruby
begin
  # Get a set of IOA Exclusions by specifying their IDs
  data, status_code, headers = api_instance.get_ioa_exclusions_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesIoaExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->get_ioa_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to retrieve |  |

### Return type

[**ResponsesIoaExclusionRespV1**](ResponsesIoaExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_ioa_exclusions_v1

> <MsaQueryResponse> query_ioa_exclusions_v1(opts)

Search for IOA exclusions.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IoaExclusionsApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'applied_globally.asc' # String | The sort expression that should be used to sort the results.
}

begin
  # Search for IOA exclusions.
  result = api_instance.query_ioa_exclusions_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->query_ioa_exclusions_v1: #{e}"
end
```

#### Using the query_ioa_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_ioa_exclusions_v1_with_http_info(opts)

```ruby
begin
  # Search for IOA exclusions.
  data, status_code, headers = api_instance.query_ioa_exclusions_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->query_ioa_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results. | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The sort expression that should be used to sort the results. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ioa_exclusions_v1

> <ResponsesIoaExclusionRespV1> update_ioa_exclusions_v1(body)

Update the IOA exclusions

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IoaExclusionsApi.new
body = Falcon::RequestsIoaExclusionUpdateReqV1.new({cl_regex: 'cl_regex_example', description: 'description_example', detection_json: 'detection_json_example', groups: ['groups_example'], id: 'id_example', ifn_regex: 'ifn_regex_example', name: 'name_example', pattern_id: 'pattern_id_example', pattern_name: 'pattern_name_example'}) # RequestsIoaExclusionUpdateReqV1 | 

begin
  # Update the IOA exclusions
  result = api_instance.update_ioa_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->update_ioa_exclusions_v1: #{e}"
end
```

#### Using the update_ioa_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesIoaExclusionRespV1>, Integer, Hash)> update_ioa_exclusions_v1_with_http_info(body)

```ruby
begin
  # Update the IOA exclusions
  data, status_code, headers = api_instance.update_ioa_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesIoaExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling IoaExclusionsApi->update_ioa_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsIoaExclusionUpdateReqV1**](RequestsIoaExclusionUpdateReqV1.md) |  |  |

### Return type

[**ResponsesIoaExclusionRespV1**](ResponsesIoaExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

