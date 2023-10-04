# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/organization_list'

module EasyshipApi
  module Operations

    class ListOrganizationsRequest < EasyshipApi::Utils::FieldAugmented
      extend T::Sig

      # Page number to fetch, default: `1`
      field :page, T.nilable(Integer), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # Number of records per page to fetch, default: `20`
      field :per_page, T.nilable(Integer), { 'query_param': { 'field_name': 'per_page', 'style': 'form', 'explode': true } }


      sig { params(page: T.nilable(Integer), per_page: T.nilable(Integer)).void }
      def initialize(page: nil, per_page: nil)
        @page = page
        @per_page = per_page
      end
    end


    class ListOrganizationsResponse < EasyshipApi::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # organization list
      field :organization_list, T.nilable(Shared::OrganizationList)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, organization_list: T.nilable(Shared::OrganizationList), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, organization_list: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @organization_list = organization_list
        @raw_response = raw_response
      end
    end
  end
end
