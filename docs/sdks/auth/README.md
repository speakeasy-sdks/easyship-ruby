# Auth
(*auth*)

### Available Operations

* [introspect](#introspect) - Introspect an Access Token
* [retrieve](#retrieve) - Retrieve an Access Token
* [retrieve_info](#retrieve_info) - Retrieve info for the Access Token
* [revoke](#revoke) - Revoke an Access Token

## introspect

Introspect an OAuth 2 Access Token using another Access Token.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new

   
req = ::.new(
  request=.new{
    "South": "Borders",
  },
)
    
res = s.auth.introspect(req)

if ! res.o_auth2_introspect_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                    | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `request`                                    | [T::Hash[Symbol, Object]](../../models//.md) | :heavy_check_mark:                           | The request object to use for the request.   |


### Response

**[T.nilable(Operations::IntrospectTokenResponse)](../../models/operations/introspecttokenresponse.md)**


## retrieve

Retrieve an OAuth 2 Access Token.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new

   
req = ::.new(
  request=.new{
    "till": "synergize",
  },
)
    
res = s.auth.retrieve(req)

if ! res.o_auth2_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                    | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `request`                                    | [T::Hash[Symbol, Object]](../../models//.md) | :heavy_check_mark:                           | The request object to use for the request.   |


### Response

**[T.nilable(Operations::RetrieveTokenResponse)](../../models/operations/retrievetokenresponse.md)**


## retrieve_info

Retrieve an OAuth 2 Access Token information.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new

    
res = s.auth.retrieve_info()

if ! res.o_auth2_token_info.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::RetrieveInfoResponse)](../../models/operations/retrieveinforesponse.md)**


## revoke

Introspect an OAuth 2 Access Token using another Access Token.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new

   
req = ::.new(
  request=.new{
    "severe": "Carson",
  },
)
    
res = s.auth.revoke(req)

if ! res.revoke_access_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                    | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `request`                                    | [T::Hash[Symbol, Object]](../../models//.md) | :heavy_check_mark:                           | The request object to use for the request.   |


### Response

**[T.nilable(Operations::RevokeTokenResponse)](../../models/operations/revoketokenresponse.md)**

