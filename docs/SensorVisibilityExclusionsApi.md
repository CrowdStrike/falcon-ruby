# Falcon::SensorVisibilityExclusionsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sv_exclusions_v1**](SensorVisibilityExclusionsApi.md#create_sv_exclusions_v1) | **POST** /policy/entities/sv-exclusions/v1 | Create the sensor visibility exclusions |
| [**delete_sensor_visibility_exclusions_v1**](SensorVisibilityExclusionsApi.md#delete_sensor_visibility_exclusions_v1) | **DELETE** /policy/entities/sv-exclusions/v1 | Delete the sensor visibility exclusions by id |
| [**get_sensor_visibility_exclusions_v1**](SensorVisibilityExclusionsApi.md#get_sensor_visibility_exclusions_v1) | **GET** /policy/entities/sv-exclusions/v1 | Get a set of Sensor Visibility Exclusions by specifying their IDs |
| [**query_sensor_visibility_exclusions_v1**](SensorVisibilityExclusionsApi.md#query_sensor_visibility_exclusions_v1) | **GET** /policy/queries/sv-exclusions/v1 | Search for sensor visibility exclusions. |
| [**update_sensor_visibility_exclusions_v1**](SensorVisibilityExclusionsApi.md#update_sensor_visibility_exclusions_v1) | **PATCH** /policy/entities/sv-exclusions/v1 | Update the sensor visibility exclusions |


## create_sv_exclusions_v1

> <ResponsesMlExclusionRespV1> create_sv_exclusions_v1(body)

Create the sensor visibility exclusions

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::SensorVisibilityExclusionsApi.new
body = Falcon::RequestsSvExclusionCreateReqV1.new # RequestsSvExclusionCreateReqV1 | 

begin
  # Create the sensor visibility exclusions
  result = api_instance.create_sv_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->create_sv_exclusions_v1: #{e}"
end
```

#### Using the create_sv_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesMlExclusionRespV1>, Integer, Hash)> create_sv_exclusions_v1_with_http_info(body)

```ruby
begin
  # Create the sensor visibility exclusions
  data, status_code, headers = api_instance.create_sv_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesMlExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->create_sv_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsSvExclusionCreateReqV1**](RequestsSvExclusionCreateReqV1.md) |  |  |

### Return type

[**ResponsesMlExclusionRespV1**](ResponsesMlExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_sensor_visibility_exclusions_v1

> <MsaQueryResponse> delete_sensor_visibility_exclusions_v1(ids, opts)

Delete the sensor visibility exclusions by id

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::SensorVisibilityExclusionsApi.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to delete
opts = {
  comment: 'comment_example' # String | Explains why this exclusions was deleted
}

begin
  # Delete the sensor visibility exclusions by id
  result = api_instance.delete_sensor_visibility_exclusions_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->delete_sensor_visibility_exclusions_v1: #{e}"
end
```

#### Using the delete_sensor_visibility_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_sensor_visibility_exclusions_v1_with_http_info(ids, opts)

```ruby
begin
  # Delete the sensor visibility exclusions by id
  data, status_code, headers = api_instance.delete_sensor_visibility_exclusions_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->delete_sensor_visibility_exclusions_v1_with_http_info: #{e}"
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


## get_sensor_visibility_exclusions_v1

> <ResponsesSvExclusionRespV1> get_sensor_visibility_exclusions_v1(ids)

Get a set of Sensor Visibility Exclusions by specifying their IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::SensorVisibilityExclusionsApi.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to retrieve

begin
  # Get a set of Sensor Visibility Exclusions by specifying their IDs
  result = api_instance.get_sensor_visibility_exclusions_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->get_sensor_visibility_exclusions_v1: #{e}"
end
```

#### Using the get_sensor_visibility_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesSvExclusionRespV1>, Integer, Hash)> get_sensor_visibility_exclusions_v1_with_http_info(ids)

```ruby
begin
  # Get a set of Sensor Visibility Exclusions by specifying their IDs
  data, status_code, headers = api_instance.get_sensor_visibility_exclusions_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesSvExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->get_sensor_visibility_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to retrieve |  |

### Return type

[**ResponsesSvExclusionRespV1**](ResponsesSvExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_sensor_visibility_exclusions_v1

> <MsaQueryResponse> query_sensor_visibility_exclusions_v1(opts)

Search for sensor visibility exclusions.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::SensorVisibilityExclusionsApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'applied_globally.asc' # String | The sort expression that should be used to sort the results.
}

begin
  # Search for sensor visibility exclusions.
  result = api_instance.query_sensor_visibility_exclusions_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->query_sensor_visibility_exclusions_v1: #{e}"
end
```

#### Using the query_sensor_visibility_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_sensor_visibility_exclusions_v1_with_http_info(opts)

```ruby
begin
  # Search for sensor visibility exclusions.
  data, status_code, headers = api_instance.query_sensor_visibility_exclusions_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->query_sensor_visibility_exclusions_v1_with_http_info: #{e}"
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


## update_sensor_visibility_exclusions_v1

> <ResponsesSvExclusionRespV1> update_sensor_visibility_exclusions_v1(body)

Update the sensor visibility exclusions

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::SensorVisibilityExclusionsApi.new
body = Falcon::RequestsSvExclusionUpdateReqV1.new({id: 'id_example'}) # RequestsSvExclusionUpdateReqV1 | 

begin
  # Update the sensor visibility exclusions
  result = api_instance.update_sensor_visibility_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->update_sensor_visibility_exclusions_v1: #{e}"
end
```

#### Using the update_sensor_visibility_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesSvExclusionRespV1>, Integer, Hash)> update_sensor_visibility_exclusions_v1_with_http_info(body)

```ruby
begin
  # Update the sensor visibility exclusions
  data, status_code, headers = api_instance.update_sensor_visibility_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesSvExclusionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorVisibilityExclusionsApi->update_sensor_visibility_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsSvExclusionUpdateReqV1**](RequestsSvExclusionUpdateReqV1.md) |  |  |

### Return type

[**ResponsesSvExclusionRespV1**](ResponsesSvExclusionRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

