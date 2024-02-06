<!-- Start SDK Example Usage [usage] -->
```ruby
require_relative easyship_ruby_sdk


s = ::Easyship::Api.new
s.config_security(
  security=::Easyship::Shared::Security.new(
    o_auth2="Bearer <YOUR_ACCESS_TOKEN_HERE>",
  )
)


req = ::Easyship::Shared::CompanyCreate.new(
  country_alpha2=::Easyship::Shared::CountryAlpha2::KP,
  name="string",
  organization_id="7ad642c1-fc6f-4e07-a41b-cdd89dc7fa50",
  owner=::Easyship::Shared::CompanyUserCreate.new(
    email="string",
    first_name="Destiny",
    last_name="Turcotte",
  ),
)
    
res = s.companies.create(req)

if ! res.company_single.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->