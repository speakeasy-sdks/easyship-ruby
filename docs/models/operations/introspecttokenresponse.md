# IntrospectTokenResponse


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `content_type`                                                              | *String*                                                                    | :heavy_check_mark:                                                          | HTTP response content type for this operation                               |
| `o_auth2_introspect_response`                                               | T::Hash[Symbol, *Object*]                                                   | :heavy_minus_sign:                                                          | Access Token Introspect                                                     |
| `status_code`                                                               | *Integer*                                                                   | :heavy_check_mark:                                                          | HTTP response status code for this operation                                |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | Raw HTTP response; suitable for custom response parsing                     |