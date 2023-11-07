<!-- Start SDK Example Usage -->


```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Shared::CompanyCreate.new(
  request=Shared::CompanyCreate.new(
    country_alpha2=Shared::CountryAlpha2::KP,
    name="string",
    organization_id="7ad642c1-fc6f-4e07-a41b-cdd89dc7fa50",
    owner=Shared::CompanyUserCreate.new(
      email="string",
      first_name="Destiny",
      last_name="Turcotte",
    ),
  ),
)
    
res = s.companies.create(req)

if ! res.company_single.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->