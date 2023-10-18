# easyship

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://github.com/speakeasy-sdks/easyship-ruby.git/actions"><img src="https://img.shields.io/github/actions/workflow/status/speakeasy-sdks/easyship-ruby/speakeasy_sdk_generation.yml?style=for-the-badge" /></a>
    
</div>

<!-- Start SDK Installation -->
## SDK Installation

```bash
gem install specific_install
gem specific_install https://github.com/speakeasy-sdks/easyship-ruby 
```
<!-- End SDK Installation -->

## SDK Example Usage
<!-- Start SDK Example Usage -->
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
    token="South",
  ),
)
    
res = s.auth.introspect(req)

if ! res.o_auth2_introspect_response.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->

<!-- Start SDK Available Operations -->
## Available Resources and Operations


### [auth](docs/sdks/auth/README.md)

* [introspect](docs/sdks/auth/README.md#introspect) - Introspect an Access Token
* [retrieve](docs/sdks/auth/README.md#retrieve) - Retrieve an Access Token
* [retrieve_info](docs/sdks/auth/README.md#retrieve_info) - Retrieve info for the Access Token
* [revoke](docs/sdks/auth/README.md#revoke) - Revoke an Access Token

### [companies](docs/sdks/companies/README.md)

* [create](docs/sdks/companies/README.md#create) - Create a Company
* [list](docs/sdks/companies/README.md#list) - List all Companies
* [update](docs/sdks/companies/README.md#update) - Update a Company

### [organizations](docs/sdks/organizations/README.md)

* [create](docs/sdks/organizations/README.md#create) - Create an Organization
* [delete](docs/sdks/organizations/README.md#delete) - Delete an organization
* [get](docs/sdks/organizations/README.md#get) - Get an Organization
* [list_all](docs/sdks/organizations/README.md#list_all) - List all Organizations
* [list_companies](docs/sdks/organizations/README.md#list_companies) - List all Companies of the Organization
* [update](docs/sdks/organizations/README.md#update) - Update an Organization
<!-- End SDK Available Operations -->

<!-- Start Dev Containers -->

<!-- End Dev Containers -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
