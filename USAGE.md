<!-- Start SDK Example Usage -->


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
<!-- End SDK Example Usage -->