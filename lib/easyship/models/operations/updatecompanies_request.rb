# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module Easyship
  module Operations
  

    class UpdateCompaniesRequest < ::Easyship::Utils::FieldAugmented
      extend T::Sig

      # Easyship company ID provided when creating the account
      field :easyship_company_id, ::String, { 'path_param': { 'field_name': 'easyship_company_id', 'style': 'simple', 'explode': false } }

      field :company_update, T.nilable(::Easyship::Shared::CompanyUpdate), { 'request': { 'media_type': 'application/json' } }


      sig { params(easyship_company_id: ::String, company_update: T.nilable(::Easyship::Shared::CompanyUpdate)).void }
      def initialize(easyship_company_id: nil, company_update: nil)
        @easyship_company_id = easyship_company_id
        @company_update = company_update
      end
    end
  end
end