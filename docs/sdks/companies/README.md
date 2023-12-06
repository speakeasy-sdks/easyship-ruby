# Companies


## Overview

Companies API

### Available Operations

* [create](#create) - Create a Company
* [list](#list) - List all Companies
* [update](#update) - Update a Company

## create

Create a new company in specific organization.

Required authorization scope: `enterprise.company`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)


req = Shared::CompanyCreate.new(
  country_alpha2=Shared::CountryAlpha2::KP,
  name="string",
  organization_id="7ad642c1-fc6f-4e07-a41b-cdd89dc7fa50",
  owner=Shared::CompanyUserCreate.new(
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

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `request`                                                     | [Shared::CompanyCreate](../../models/shared/companycreate.md) | :heavy_check_mark:                                            | The request object to use for the request.                    |


### Response

**[T.nilable(Operations::CreateCompaniesResponse)](../../models/operations/createcompaniesresponse.md)**


## list

List all companies which belong to organisation.

Required authorization scope: `enterprise.company`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)


req = Operations::ListCompaniesRequest.new()
    
res = s.companies.list(company_name="string", easyship_company_id="string", organization_id="c184a429-302e-4aca-80db-f1718b882a50", owner_email="string", sort_by=Operations::SortBy::CREATED_AT, sort_direction=Operations::SortDirection::ASC)

if ! res.company_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `company_name`                                                        | *String*                                                              | :heavy_minus_sign:                                                    | Filter by company name                                                |
| `easyship_company_id`                                                 | *String*                                                              | :heavy_minus_sign:                                                    | Filter by Easyship company ID                                         |
| `organization_id`                                                     | *String*                                                              | :heavy_minus_sign:                                                    | Filter by organization ID                                             |
| `owner_email`                                                         | *String*                                                              | :heavy_minus_sign:                                                    | Filter by company owner's email                                       |
| `sort_by`                                                             | [Operations::SortBy](../../models/operations/sortby.md)               | :heavy_minus_sign:                                                    | Sort records by listed columns. Default: `created_at`                 |
| `sort_direction`                                                      | [Operations::SortDirection](../../models/operations/sortdirection.md) | :heavy_minus_sign:                                                    | Set the sort direction. Default: `DESC`                               |


### Response

**[T.nilable(Operations::ListCompaniesResponse)](../../models/operations/listcompaniesresponse.md)**


## update

Update a company.

Required authorization scope: `enterprise.company`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)


req = Operations::UpdateCompaniesRequest.new(
  easyship_company_id="d0905bf4-aa77-4f20-8e77-54c352acfe54",
  company_update=Shared::CompanyUpdate.new(
    owner=Shared::Owner.new(),
  ),
)
    
res = s.companies.update(easyship_company_id="077cabf6-805c-45ca-b187-14355ad7d4e1", company_update=Shared::CompanyUpdate.new(
    owner=Shared::Owner.new(),
  ))

if ! res.company_single.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `easyship_company_id`                                         | *String*                                                      | :heavy_check_mark:                                            | Easyship company ID provided when creating the account        |
| `company_update`                                              | [Shared::CompanyUpdate](../../models/shared/companyupdate.md) | :heavy_minus_sign:                                            | N/A                                                           |


### Response

**[T.nilable(Operations::UpdateCompaniesResponse)](../../models/operations/updatecompaniesresponse.md)**

