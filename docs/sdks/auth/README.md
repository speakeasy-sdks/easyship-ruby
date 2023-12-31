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
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Shared::OAuth2IntrospectRequest.new(
  request=Shared::OAuth2IntrospectRequest.new(
    token="string",
  ),
)
    
res = s.auth.introspect(req)

if ! res.o_auth2_introspect_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Shared::OAuth2IntrospectRequest](../../models/shared/oauth2introspectrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::IntrospectTokenResponse)](../../models/operations/introspecttokenresponse.md)**


## retrieve

Retrieve an OAuth 2 Access Token.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Shared::OAuth2ClientCredentialsRequest.new(
  request=Shared::OAuth2ClientCredentialsRequest.new(
    client_id="string",
    client_secret="string",
    grant_type=Shared::OAuth2ClientCredentialsRequestGrantType::CLIENT_CREDENTIALS,
    scope="string",
  ),
)
    
res = s.auth.retrieve(req)

if ! res.o_auth2_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Shared::OAuth2ClientCredentialsRequest](../../models/shared/oauth2clientcredentialsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::RetrieveTokenResponse)](../../models/operations/retrievetokenresponse.md)**


## retrieve_info

Retrieve an OAuth 2 Access Token information.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

    
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
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Shared::OAuth2TokenRevokeRequest.new(
  request=Shared::OAuth2TokenRevokeRequest.new(
    client_id="string",
    client_secret="string",
    grant_type=Shared::GrantType::CLIENT_CREDENTIALS,
    token="string",
  ),
)
    
res = s.auth.revoke(req)

if ! res.revoke_access_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Shared::OAuth2TokenRevokeRequest](../../models/shared/oauth2tokenrevokerequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::RevokeTokenResponse)](../../models/operations/revoketokenresponse.md)**

