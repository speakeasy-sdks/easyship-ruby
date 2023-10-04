<!-- Start SDK Example Usage -->


```ruby
require_relative easyship_ruby_sdk


s = Easyship::Easyship.new

   
req = Shared::OAuth2IntrospectRequest.new(
  request=Shared::OAuth2IntrospectRequest.new(
    token="Intranet",
  ),
)
    
res = s.auth.introspect(req)

if ! res.o_auth2_introspect_response.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->