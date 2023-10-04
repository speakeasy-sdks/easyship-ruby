# Organizations
(*organizations*)

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
require_relative easyshiprubysdk


s = EasyshipApi::Easyship.new

   
req = Shared::OrganizationCreate.new(
  request=Shared::OrganizationCreate.new(
    name="bluetooth Extended",
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
require_relative easyshiprubysdk


s = EasyshipApi::Easyship.new

   
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
require_relative easyshiprubysdk


s = EasyshipApi::Easyship.new

   
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
require_relative easyshiprubysdk


s = EasyshipApi::Easyship.new

   
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
| `page`                                             | *T.nilable(Integer)*                               | :heavy_minus_sign:                                 | Page number to fetch, default: `1`                 |
| `per_page`                                         | *T.nilable(Integer)*                               | :heavy_minus_sign:                                 | Number of records per page to fetch, default: `20` |


### Response

**[T.nilable(Operations::ListOrganizationsResponse)](../../models/operations/listorganizationsresponse.md)**


## list_companies

Retrieve a list of companies from a specific organization.

Required authorization scope: `enterprise.company`


### Example Usage

```ruby
require_relative easyshiprubysdk


s = EasyshipApi::Easyship.new

   
req = Operations::ListOrganizationCompaniesRequest.new(
  path_params=Operations::ListOrganizationCompaniesRequest.new(
    company_name="Hickle Group",
    easyship_company_id="Neither",
    organization_id="1c1b2d85-fb60-4538-8666-7071b818d3fe",
    owner_email="Hawthorne",
    sort_by=Operations::ListOrganizationCompaniesSortBy::COMPANY_NAME,
    sort_direction=Operations::ListOrganizationCompaniesSortDirection::ASC,
  ),
  query_params=Operations::ListOrganizationCompaniesRequest.new(
    company_name="Treutel - Armstrong",
    easyship_company_id="Facilitator male",
    organization_id="83a30c36-9cc3-4429-bd6b-fb63c57ab99f",
    owner_email="North Computers implement",
    sort_by=Operations::ListOrganizationCompaniesSortBy::CREATED_AT,
    sort_direction=Operations::ListOrganizationCompaniesSortDirection::ASC,
  ),
)
    
res = s.organizations.list_companies(req)

if ! res.company_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::ListOrganizationCompaniesRequest](../../models/operations/listorganizationcompaniesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::ListOrganizationCompaniesResponse)](../../models/operations/listorganizationcompaniesresponse.md)**


## update

Update a specific organization (group of child companies).

Required authorization scope: `enterprise.organization`


### Example Usage

```ruby
require_relative easyshiprubysdk


s = EasyshipApi::Easyship.new

   
req = Operations::UpdateOrganizationsRequest.new(
  path_params=Operations::UpdateOrganizationsRequest.new(
    organization_id="d0905bf4-aa77-4f20-8e77-54c352acfe54",
    organization_update=Shared::OrganizationUpdate.new(
      name="JBOD",
    ),
  ),
  organization_update=Shared::OrganizationUpdate.new(
    name="Quality guestbook driver",
  ),
)
    
res = s.organizations.update(req)

if ! res.organization_single.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                          | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `organization_id`                                                                  | *String*                                                                           | :heavy_check_mark:                                                                 | Organization ID provided when creating the organization                            |
| `organization_update`                                                              | [T.nilable(Shared::OrganizationUpdate)](../../models/shared/organizationupdate.md) | :heavy_minus_sign:                                                                 | N/A                                                                                |


### Response

**[T.nilable(Operations::UpdateOrganizationsResponse)](../../models/operations/updateorganizationsresponse.md)**

