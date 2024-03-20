# easyship

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://github.com/speakeasy-sdks/easyship-ruby.git/actions"><img src="https://img.shields.io/github/actions/workflow/status/speakeasy-sdks/easyship-ruby/speakeasy_sdk_generation.yml?style=for-the-badge" /></a>
    
</div>

<!-- Start SDK Installation [installation] -->
## SDK Installation

```bash
gem install specific_install
gem specific_install https://github.com/speakeasy-sdks/easyship-ruby 
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'easyship_ruby_sdk'


s = ::Easyship::Api.new
s.config_security(
  ::Easyship::Shared::Security.new(
    o_auth2: "Bearer <YOUR_ACCESS_TOKEN_HERE>",
  )
)


req = ::Easyship::Shared::CompanyCreate.new(
  country_alpha2: ::Easyship::Shared::CountryAlpha2::KP,
  name: "<value>",
  organization_id: "7ad642c1-fc6f-4e07-a41b-cdd89dc7fa50",
  owner: ::Easyship::Shared::CompanyUserCreate.new(
    email: "<value>",
    first_name: "Destiny",
    last_name: "Turcotte",
  ),
)
    
res = s.companies.create(req)

if ! res.company_single.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

### [Companies](docs/sdks/companies/README.md)

* [create](docs/sdks/companies/README.md#create) - Create a Company
* [list](docs/sdks/companies/README.md#list) - List all Companies
* [update](docs/sdks/companies/README.md#update) - Update a Company

### [Organizations](docs/sdks/organizations/README.md)

* [create](docs/sdks/organizations/README.md#create) - Create an Organization
* [delete](docs/sdks/organizations/README.md#delete) - Delete an organization
* [get](docs/sdks/organizations/README.md#get) - Get an Organization
* [list_all](docs/sdks/organizations/README.md#list_all) - List all Organizations
* [list_companies](docs/sdks/organizations/README.md#list_companies) - List all Companies of the Organization
* [update](docs/sdks/organizations/README.md#update) - Update an Organization

### [Auth](docs/sdks/auth/README.md)

* [introspect](docs/sdks/auth/README.md#introspect) - Introspect an Access Token
* [retrieve](docs/sdks/auth/README.md#retrieve) - Retrieve an Access Token
* [retrieve_info](docs/sdks/auth/README.md#retrieve_info) - Retrieve info for the Access Token
* [revoke](docs/sdks/auth/README.md#revoke) - Revoke an Access Token
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `https://enterprise-api.easyship.com` | None |




### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

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
