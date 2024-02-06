# Auth


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


s = ::Easyship::Api.new
s.config_security(
  security=::Easyship::Shared::Security.new(
    o_auth2="Bearer <YOUR_ACCESS_TOKEN_HERE>",
  )
)


req = ::Easyship::Shared::OAuth2IntrospectRequest.new()
    
res = s.auth.introspect(req)

if ! res.o_auth2_introspect_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::Easyship::Shared::OAuth2IntrospectRequest](../../models/shared/oauth2introspectrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::Easyship::Operations::IntrospectTokenResponse)](../../models/operations/introspecttokenresponse.md)**


## retrieve

Retrieve an OAuth 2 Access Token.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = ::Easyship::Api.new
s.config_security(
  security=::Easyship::Shared::Security.new(
    o_auth2="Bearer <YOUR_ACCESS_TOKEN_HERE>",
  )
)


req = ::Easyship::Shared::OAuth2ClientCredentialsRequest.new(
  client_id="string",
  client_secret="string",
  grant_type=::Easyship::Shared::OAuth2ClientCredentialsRequestGrantType::CLIENT_CREDENTIALS,
  scope="string",
)
    
res = s.auth.retrieve(req)

if ! res.o_auth2_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::Easyship::Shared::OAuth2ClientCredentialsRequest](../../models/shared/oauth2clientcredentialsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::Easyship::Operations::RetrieveTokenResponse)](../../models/operations/retrievetokenresponse.md)**


## retrieve_info

Retrieve an OAuth 2 Access Token information.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = ::Easyship::Api.new
s.config_security(
  security=::Easyship::Shared::Security.new(
    o_auth2="Bearer <YOUR_ACCESS_TOKEN_HERE>",
  )
)

    
res = s.auth.retrieve_info()

if ! res.o_auth2_token_info.nil?
  # handle response
end

```


### Response

**[T.nilable(::Easyship::Operations::RetrieveInfoResponse)](../../models/operations/retrieveinforesponse.md)**


## revoke

Introspect an OAuth 2 Access Token using another Access Token.


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = ::Easyship::Api.new
s.config_security(
  security=::Easyship::Shared::Security.new(
    o_auth2="Bearer <YOUR_ACCESS_TOKEN_HERE>",
  )
)


req = ::Easyship::Shared::OAuth2TokenRevokeRequest.new(
  client_id="string",
  client_secret="string",
  grant_type=::Easyship::Shared::GrantType::CLIENT_CREDENTIALS,
  token="string",
)
    
res = s.auth.revoke(req)

if ! res.revoke_access_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::Easyship::Shared::OAuth2TokenRevokeRequest](../../models/shared/oauth2tokenrevokerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(::Easyship::Operations::RevokeTokenResponse)](../../models/operations/revoketokenresponse.md)**

