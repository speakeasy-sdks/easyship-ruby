# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/company_list'

module OpenApiSDK
  module Operations
    # ListCompaniesSortBy - Sort records by listed columns. Default: `created_at`
    class ListCompaniesSortBy < T::Enum
      enums do
        COMPANY_NAME = new('company_name')
        CREATED_AT = new('created_at')
      end
    end


    # ListCompaniesSortDirection - Set the sort direction. Default: `DESC`
    class ListCompaniesSortDirection < T::Enum
      enums do
        ASC = new('ASC')
        DESC = new('DESC')
      end
    end



    class ListCompaniesRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Filter by company name
      field :company_name, T.nilable(String), { 'query_param': { 'field_name': 'company_name', 'style': 'form', 'explode': true } }
      # Filter by Easyship company ID
      field :easyship_company_id, T.nilable(String), { 'query_param': { 'field_name': 'easyship_company_id', 'style': 'form', 'explode': true } }
      # Filter by organization ID
      field :organization_id, T.nilable(String), { 'query_param': { 'field_name': 'organization_id', 'style': 'form', 'explode': true } }
      # Filter by company owner's email
      field :owner_email, T.nilable(String), { 'query_param': { 'field_name': 'owner_email', 'style': 'form', 'explode': true } }
      # Sort records by listed columns. Default: `created_at`
      field :sort_by, T.nilable(Operations::ListCompaniesSortBy), { 'query_param': { 'field_name': 'sort_by', 'style': 'form', 'explode': true } }
      # Set the sort direction. Default: `DESC`
      field :sort_direction, T.nilable(Operations::ListCompaniesSortDirection), { 'query_param': { 'field_name': 'sort_direction', 'style': 'form', 'explode': true } }


      sig { params(company_name: T.nilable(String), easyship_company_id: T.nilable(String), organization_id: T.nilable(String), owner_email: T.nilable(String), sort_by: T.nilable(Operations::ListCompaniesSortBy), sort_direction: T.nilable(Operations::ListCompaniesSortDirection)).void }
      def initialize(company_name: nil, easyship_company_id: nil, organization_id: nil, owner_email: nil, sort_by: nil, sort_direction: nil)
        @company_name = company_name
        @easyship_company_id = easyship_company_id
        @organization_id = organization_id
        @owner_email = owner_email
        @sort_by = sort_by
        @sort_direction = sort_direction
      end
    end


    class ListCompaniesResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # company list
      field :company_list, T.nilable(Shared::CompanyList)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, company_list: T.nilable(Shared::CompanyList), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, company_list: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @company_list = company_list
        @raw_response = raw_response
      end
    end
  end
end
