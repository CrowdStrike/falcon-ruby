# Falcon::MlExclusionsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ml_exclusions_v1**](MlExclusionsApi.md#create_ml_exclusions_v1) | **POST** /policy/entities/ml-exclusions/v1 | Create the ML exclusions |
| [**delete_ml_exclusions_v1**](MlExclusionsApi.md#delete_ml_exclusions_v1) | **DELETE** /policy/entities/ml-exclusions/v1 | Delete the ML exclusions by id |
| [**get_ml_exclusions_v1**](MlExclusionsApi.md#get_ml_exclusions_v1) | **GET** /policy/entities/ml-exclusions/v1 | Get a set of ML Exclusions by specifying their IDs |
| [**query_ml_exclusions_v1**](MlExclusionsApi.md#query_ml_exclusions_v1) | **GET** /policy/queries/ml-exclusions/v1 | Search for ML exclusions. |
| [**update_ml_exclusions_v1**](MlExclusionsApi.md#update_ml_exclusions_v1) | **PATCH** /policy/entities/ml-exclusions/v1 | Update the ML exclusions |


## create_ml_exclusions_v1

> <ResponsesMlExclusionRespV1> create_ml_exclusions_v1(body)

Create the ML exclusions

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::MlExclusionsApi.new
body = Falcon::RequestsMlExclusionCreateReqV1.new # RequestsMlExclusionCreateReqV1 | 

begin
  # Create the ML exclusions
  result = api_instance.create_ml_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->create_ml_exclusions_v1: #{e}"
end
```

#### Using the create_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesMlExclusionRespV1>, Integer, Hash)> create_ml_exclusions_v1_with_http_info(body)

```ruby
begin
  # Create the ML exclusions
  data, status_code, headers = api_instance.create_ml_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesMlExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->create_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsMlExclusionCreateReqV1**](RequestsMlExclusionCreateReqV1.md) |  |  |

### Return type

[**ResponsesMlExclusionRespV1**](ResponsesMlExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ml_exclusions_v1

> <ResponsesMlExclusionRespV1> delete_ml_exclusions_v1(ids, opts)

Delete the ML exclusions by id

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::MlExclusionsApi.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to delete
opts = {
  comment: 'comment_example' # String | Explains why this exclusions was deleted
}

begin
  # Delete the ML exclusions by id
  result = api_instance.delete_ml_exclusions_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->delete_ml_exclusions_v1: #{e}"
end
```

#### Using the delete_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesMlExclusionRespV1>, Integer, Hash)> delete_ml_exclusions_v1_with_http_info(ids, opts)

```ruby
begin
  # Delete the ML exclusions by id
  data, status_code, headers = api_instance.delete_ml_exclusions_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesMlExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->delete_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to delete |  |
| **comment** | **String** | Explains why this exclusions was deleted | [optional] |

### Return type

[**ResponsesMlExclusionRespV1**](ResponsesMlExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ml_exclusions_v1

> <ResponsesMlExclusionRespV1> get_ml_exclusions_v1(ids)

Get a set of ML Exclusions by specifying their IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::MlExclusionsApi.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to retrieve

begin
  # Get a set of ML Exclusions by specifying their IDs
  result = api_instance.get_ml_exclusions_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->get_ml_exclusions_v1: #{e}"
end
```

#### Using the get_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesMlExclusionRespV1>, Integer, Hash)> get_ml_exclusions_v1_with_http_info(ids)

```ruby
begin
  # Get a set of ML Exclusions by specifying their IDs
  data, status_code, headers = api_instance.get_ml_exclusions_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesMlExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->get_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to retrieve |  |

### Return type

[**ResponsesMlExclusionRespV1**](ResponsesMlExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_ml_exclusions_v1

> <MsaQueryResponse> query_ml_exclusions_v1(opts)

Search for ML exclusions.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::MlExclusionsApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'applied_globally.asc' # String | The sort expression that should be used to sort the results.
}

begin
  # Search for ML exclusions.
  result = api_instance.query_ml_exclusions_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->query_ml_exclusions_v1: #{e}"
end
```

#### Using the query_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_ml_exclusions_v1_with_http_info(opts)

```ruby
begin
  # Search for ML exclusions.
  data, status_code, headers = api_instance.query_ml_exclusions_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->query_ml_exclusions_v1_with_http_info: #{e}"
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


## update_ml_exclusions_v1

> <ResponsesMlExclusionRespV1> update_ml_exclusions_v1(body)

Update the ML exclusions

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::MlExclusionsApi.new
body = Falcon::RequestsSvExclusionUpdateReqV1.new({id: 'id_example'}) # RequestsSvExclusionUpdateReqV1 | 

begin
  # Update the ML exclusions
  result = api_instance.update_ml_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->update_ml_exclusions_v1: #{e}"
end
```

#### Using the update_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesMlExclusionRespV1>, Integer, Hash)> update_ml_exclusions_v1_with_http_info(body)

```ruby
begin
  # Update the ML exclusions
  data, status_code, headers = api_instance.update_ml_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesMlExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusionsApi->update_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsSvExclusionUpdateReqV1**](RequestsSvExclusionUpdateReqV1.md) |  |  |

### Return type

[**ResponsesMlExclusionRespV1**](ResponsesMlExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

