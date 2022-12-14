# Falcon::FilevantageApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_changes**](FilevantageApi.md#get_changes) | **GET** /filevantage/entities/changes/v2 | Retrieve information on changes |
| [**query_changes**](FilevantageApi.md#query_changes) | **GET** /filevantage/queries/changes/v2 | Returns one or more change IDs |


## get_changes

> <ExternalGetChangesResponse> get_changes(ids)

Retrieve information on changes

Retrieve key attributes of Falcon FileVantage changes for the specified ids.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FilevantageApi.new
ids = ['inner_example'] # Array<String> | Comma separated values of change ids

begin
  # Retrieve information on changes
  result = api_instance.get_changes(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FilevantageApi->get_changes: #{e}"
end
```

#### Using the get_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalGetChangesResponse>, Integer, Hash)> get_changes_with_http_info(ids)

```ruby
begin
  # Retrieve information on changes
  data, status_code, headers = api_instance.get_changes_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalGetChangesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FilevantageApi->get_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Comma separated values of change ids |  |

### Return type

[**ExternalGetChangesResponse**](ExternalGetChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_changes

> <MsaQueryResponse> query_changes(opts)

Returns one or more change IDs

Returns a list of Falcon FileVantage change IDs filtered, sorted and limited by the query parameters provided

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::FilevantageApi.new
opts = {
  offset: 56, # Integer | The first change index to return in the response. If not provided it will default to '0'. Use with the `limit` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of changes to return in the response (default: 100; max: 500). Use with the `offset` parameter to manage pagination of results
  sort: 'sort_example', # String | Sort changes using options like:  - `action_timestamp` (timestamp of the change occurrence)    Sort either `asc` (ascending) or `desc` (descending). For example: `action_timestamp|asc`. The full list of allowed sorting options can be reviewed in our API documentation.
  filter: 'filter_example' # String | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - `host.host_name`  - `action_timestamp`   The full list of allowed filter parameters can be reviewed in our API documentation.
}

begin
  # Returns one or more change IDs
  result = api_instance.query_changes(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FilevantageApi->query_changes: #{e}"
end
```

#### Using the query_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_changes_with_http_info(opts)

```ruby
begin
  # Returns one or more change IDs
  data, status_code, headers = api_instance.query_changes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FilevantageApi->query_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first change index to return in the response. If not provided it will default to &#39;0&#39;. Use with the &#x60;limit&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of changes to return in the response (default: 100; max: 500). Use with the &#x60;offset&#x60; parameter to manage pagination of results | [optional] |
| **sort** | **String** | Sort changes using options like:  - &#x60;action_timestamp&#x60; (timestamp of the change occurrence)    Sort either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). For example: &#x60;action_timestamp|asc&#x60;. The full list of allowed sorting options can be reviewed in our API documentation. | [optional] |
| **filter** | **String** | Filter changes using a query in Falcon Query Language (FQL).   Common filter options include:   - &#x60;host.host_name&#x60;  - &#x60;action_timestamp&#x60;   The full list of allowed filter parameters can be reviewed in our API documentation. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

