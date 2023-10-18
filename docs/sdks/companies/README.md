# Companies
(*companies*)

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
  request=Shared::CompanyCreate.new(
    country_alpha2=Shared::CountryAlpha2::KP,
    name="bluetooth",
    organization_id="d642c1fc-6fe0-4724-9bcd-d89dc7fa504e",
    owner=Shared::CompanyUserCreate.new(
      email="South",
      first_name="Daren",
      last_name="Durgan",
    ),
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

   
req = Operations::ListCompaniesRequest.new(
  query_params=Operations::ListCompaniesRequest.new(
    company_name="Bradtke, Lockman and Gerhold",
    easyship_company_id="Product",
    organization_id="02eaca40-dbf1-4718-b882-a50805557419",
    owner_email="gah",
    sort_by=Operations::ListCompaniesSortBy::CREATED_AT,
    sort_direction=Operations::ListCompaniesSortDirection::ASC,
  ),
)
    
res = s.companies.list(req)

if ! res.company_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `company_name`                                                                                  | *String*                                                                                        | :heavy_minus_sign:                                                                              | Filter by company name                                                                          |
| `easyship_company_id`                                                                           | *String*                                                                                        | :heavy_minus_sign:                                                                              | Filter by Easyship company ID                                                                   |
| `organization_id`                                                                               | *String*                                                                                        | :heavy_minus_sign:                                                                              | Filter by organization ID                                                                       |
| `owner_email`                                                                                   | *String*                                                                                        | :heavy_minus_sign:                                                                              | Filter by company owner's email                                                                 |
| `sort_by`                                                                                       | [Operations::ListCompaniesSortBy](../../models/operations/listcompaniessortby.md)               | :heavy_minus_sign:                                                                              | Sort records by listed columns. Default: `created_at`                                           |
| `sort_direction`                                                                                | [Operations::ListCompaniesSortDirection](../../models/operations/listcompaniessortdirection.md) | :heavy_minus_sign:                                                                              | Set the sort direction. Default: `DESC`                                                         |


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
  path_params=Operations::UpdateCompaniesRequest.new(
    easyship_company_id="d0905bf4-aa77-4f20-8e77-54c352acfe54",
    company_update=Shared::CompanyUpdate.new(
      name="East",
      owner=Shared::Owner.new(
        email="Baht",
        first_name="Lolita",
        last_name="Powlowski",
      ),
    ),
  ),
  company_update=Shared::CompanyUpdate.new(
    name="guestbook",
    owner=Shared::Owner.new(
      email="driver",
      first_name="Eulah",
      last_name="Roob",
    ),
  ),
)
    
res = s.companies.update(req)

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

