# Organizations


## Overview

Organizations API

### Available Operations

* [create](#create) - Create an Organization
* [delete](#delete) - Delete an organization
* [get](#get) - Get an Organization
* [list_all](#list_all) - List all Organizations
* [list_companies](#list_companies) - List all Companies of the Organization
* [update](#update) - Update an Organization

## create

Create a new organization (group of your child companies) in your group.

Required authorization scope: `enterprise.organization`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Shared::OrganizationCreate.new(
  request=Shared::OrganizationCreate.new(
    name="string",
  ),
)
    
res = s.organizations.create(req)

if ! res.organization_single.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Shared::OrganizationCreate](../../models/shared/organizationcreate.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |


### Response

**[T.nilable(Operations::CreateOrganizationsResponse)](../../models/operations/createorganizationsresponse.md)**


## delete

Delete an organization (group of child companies) from your group.
An organization can be deleted only when there are no companies in it.

Required authorization scope: `enterprise.organization`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Operations::DeleteOrganizationsRequest.new(
  path_params=Operations::DeleteOrganizationsRequest.new(
    organization_id="8db863f6-ef9b-413a-8a70-cb816b33de6b",
  ),
)
    
res = s.organizations.delete(req)

if ! res.success.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `organization_id`                                       | *String*                                                | :heavy_check_mark:                                      | Organization ID provided when creating the organization |


### Response

**[T.nilable(Operations::DeleteOrganizationsResponse)](../../models/operations/deleteorganizationsresponse.md)**


## get

Retrieve details of a specific organization (group of child companies) in your group.

Required authorization scope: `enterprise.organization`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Operations::GetOrganizationsRequest.new(
  path_params=Operations::GetOrganizationsRequest.new(
    organization_id="b18d8d81-fd7b-4764-a31e-475cb1f36591",
  ),
)
    
res = s.organizations.get(req)

if ! res.organization_single.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `organization_id`                                       | *String*                                                | :heavy_check_mark:                                      | Organization ID provided when creating the organization |


### Response

**[T.nilable(Operations::GetOrganizationsResponse)](../../models/operations/getorganizationsresponse.md)**


## list_all

Retrieve a list of organizations (groups of child companies) that are a part of your group.

Required authorization scope: `enterprise.organization`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Operations::ListOrganizationsRequest.new(
  query_params=Operations::ListOrganizationsRequest.new(
    page=562616,
    per_page=539434,
  ),
)
    
res = s.organizations.list_all(req)

if ! res.organization_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                          | Type                                               | Required                                           | Description                                        |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `page`                                             | *Integer*                                          | :heavy_minus_sign:                                 | Page number to fetch, default: `1`                 |
| `per_page`                                         | *Integer*                                          | :heavy_minus_sign:                                 | Number of records per page to fetch, default: `20` |


### Response

**[T.nilable(Operations::ListOrganizationsResponse)](../../models/operations/listorganizationsresponse.md)**


## list_companies

Retrieve a list of companies from a specific organization.

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

   
req = Operations::ListOrganizationCompaniesRequest.new(
  path_params=Operations::ListOrganizationCompaniesRequest.new(
    organization_id="15e2991c-1b2d-485f-b605-3846667071b8",
    company_name="Luettgen Group",
    easyship_company_id="string",
    owner_email="string",
    sort_by=Operations::QueryParamSortBy::COMPANY_NAME,
    sort_direction=Operations::QueryParamSortDirection::DESC,
  ),
  query_params=Operations::ListOrganizationCompaniesRequest.new(
    organization_id="e206565e-09a2-49dc-be83-a30c369cc342",
    company_name="Wiegand - Shanahan",
    easyship_company_id="string",
    owner_email="string",
    sort_by=Operations::QueryParamSortBy::COMPANY_NAME,
    sort_direction=Operations::QueryParamSortDirection::DESC,
  ),
)
    
res = s.organizations.list_companies(req)

if ! res.company_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `organization_id`                                                                         | *String*                                                                                  | :heavy_check_mark:                                                                        | Organization ID provided when creating the organization                                   |
| `company_name`                                                                            | *String*                                                                                  | :heavy_minus_sign:                                                                        | Filter by company name                                                                    |
| `easyship_company_id`                                                                     | *String*                                                                                  | :heavy_minus_sign:                                                                        | Filter by Easyship company ID                                                             |
| `owner_email`                                                                             | *String*                                                                                  | :heavy_minus_sign:                                                                        | Filter by company owner's email                                                           |
| `sort_by`                                                                                 | [Operations::QueryParamSortBy](../../models/operations/queryparamsortby.md)               | :heavy_minus_sign:                                                                        | Sort records by listed columns. Default: `created_at`                                     |
| `sort_direction`                                                                          | [Operations::QueryParamSortDirection](../../models/operations/queryparamsortdirection.md) | :heavy_minus_sign:                                                                        | Set the sort direction. Default: `DESC`                                                   |


### Response

**[T.nilable(Operations::ListOrganizationCompaniesResponse)](../../models/operations/listorganizationcompaniesresponse.md)**


## update

Update a specific organization (group of child companies).

Required authorization scope: `enterprise.organization`


### Example Usage

```ruby
require_relative easyship_ruby_sdk


s = Easyship::Api.new
s.config_security(
  security=Shared::Security.new(
    o_auth2="",
  )
)

   
req = Operations::UpdateOrganizationsRequest.new(
  path_params=Operations::UpdateOrganizationsRequest.new(
    organization_id="d0905bf4-aa77-4f20-8e77-54c352acfe54",
    organization_update=Shared::OrganizationUpdate.new(
      name="string",
    ),
  ),
  organization_update=Shared::OrganizationUpdate.new(
    name="string",
  ),
)
    
res = s.organizations.update(req)

if ! res.organization_single.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `organization_id`                                                       | *String*                                                                | :heavy_check_mark:                                                      | Organization ID provided when creating the organization                 |
| `organization_update`                                                   | [Shared::OrganizationUpdate](../../models/shared/organizationupdate.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::UpdateOrganizationsResponse)](../../models/operations/updateorganizationsresponse.md)**

