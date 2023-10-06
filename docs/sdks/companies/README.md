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

   
req = Shared::CompanyCreate.new(
  request=Shared::CompanyCreate.new(
    country_alpha2=Shared::CountryAlpha2::KP,
    name="Configuration Money",
    organization_id="c1fc6fe0-7241-4bcd-989d-c7fa504e0833",
    owner=Shared::CompanyUserCreate.new(
      email="female",
      first_name="Ricardo",
      last_name="Hand",
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

   
req = Operations::ListCompaniesRequest.new(
  query_params=Operations::ListCompaniesRequest.new(
    company_name="Bradtke, Lockman and Gerhold",
    easyship_company_id="Canada that orchid",
    organization_id="40dbf171-8b88-42a5-8805-557419e790e2",
    owner_email="green Smart",
    sort_by=Operations::ListCompaniesSortBy::COMPANY_NAME,
    sort_direction=Operations::ListCompaniesSortDirection::ASC,
  ),
)
    
res = s.companies.list(req)

if ! res.company_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                  | Type                                                                                                       | Required                                                                                                   | Description                                                                                                |
| ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `company_name`                                                                                             | *T.nilable(String)*                                                                                        | :heavy_minus_sign:                                                                                         | Filter by company name                                                                                     |
| `easyship_company_id`                                                                                      | *T.nilable(String)*                                                                                        | :heavy_minus_sign:                                                                                         | Filter by Easyship company ID                                                                              |
| `organization_id`                                                                                          | *T.nilable(String)*                                                                                        | :heavy_minus_sign:                                                                                         | Filter by organization ID                                                                                  |
| `owner_email`                                                                                              | *T.nilable(String)*                                                                                        | :heavy_minus_sign:                                                                                         | Filter by company owner's email                                                                            |
| `sort_by`                                                                                                  | [T.nilable(Operations::ListCompaniesSortBy)](../../models/operations/listcompaniessortby.md)               | :heavy_minus_sign:                                                                                         | Sort records by listed columns. Default: `created_at`                                                      |
| `sort_direction`                                                                                           | [T.nilable(Operations::ListCompaniesSortDirection)](../../models/operations/listcompaniessortdirection.md) | :heavy_minus_sign:                                                                                         | Set the sort direction. Default: `DESC`                                                                    |


### Response

**[T.nilable(Operations::ListCompaniesResponse)](../../models/operations/listcompaniesresponse.md)**


## update

Update a company.

Required authorization scope: `enterprise.company`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new

   
req = Operations::UpdateCompaniesRequest.new(
  path_params=Operations::UpdateCompaniesRequest.new(
    easyship_company_id="d0905bf4-aa77-4f20-8e77-54c352acfe54",
    company_update=Shared::CompanyUpdate.new(
      name="JBOD",
      owner=Shared::Owner.new(
        email="Quality guestbook driver",
        first_name="Eulah",
        last_name="Roob",
      ),
    ),
  ),
  company_update=Shared::CompanyUpdate.new(
    name="Gasoline Lev",
    owner=Shared::Owner.new(
      email="Northwest Fantastic",
      first_name="Fermin",
      last_name="O'Connell",
    ),
  ),
)
    
res = s.companies.update(req)

if ! res.company_single.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `easyship_company_id`                                                    | *String*                                                                 | :heavy_check_mark:                                                       | Easyship company ID provided when creating the account                   |
| `company_update`                                                         | [T.nilable(Shared::CompanyUpdate)](../../models/shared/companyupdate.md) | :heavy_minus_sign:                                                       | N/A                                                                      |


### Response

**[T.nilable(Operations::UpdateCompaniesResponse)](../../models/operations/updatecompaniesresponse.md)**

