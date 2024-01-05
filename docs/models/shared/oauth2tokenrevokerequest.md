# OAuth2TokenRevokeRequest

OAuth 2 Token Revoke Request


## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `client_id`                                           | *String*                                              | :heavy_check_mark:                                    | OAuth 2 Client ID                                     |
| `client_secret`                                       | *String*                                              | :heavy_check_mark:                                    | OAuth 2 Client Secret                                 |
| `grant_type`                                          | [Shared::GrantType](../../models/shared/granttype.md) | :heavy_check_mark:                                    | OAuth 2 Grant Type                                    |
| `token`                                               | *String*                                              | :heavy_check_mark:                                    | OAuth 2 Access Token                                  |