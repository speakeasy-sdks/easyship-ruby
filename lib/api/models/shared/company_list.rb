# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/pagination'

module Easyship
  module Shared

    class Meta < Easyship::Utils::FieldAugmented
      extend T::Sig

      # Pagination
      field :pagination, T.nilable(Shared::Pagination), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('pagination') } }


      sig { params(pagination: T.nilable(Shared::Pagination)).void }
      def initialize(pagination: nil)
        @pagination = pagination
      end
    end

    # List of Companies
    class CompanyList < Easyship::Utils::FieldAugmented
      extend T::Sig


      field :companies, T.nilable(T::Array[Shared::Company]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('companies') } }

      field :meta, T.nilable(Shared::Meta), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('meta') } }


      sig { params(companies: T.nilable(T::Array[Shared::Company]), meta: T.nilable(Shared::Meta)).void }
      def initialize(companies: nil, meta: nil)
        @companies = companies
        @meta = meta
      end
    end
  end
end
