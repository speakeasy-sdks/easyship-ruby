# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/countryalpha2'
require_relative '../shared/organization'

module OpenApiSDK
  module Shared

    class CompanyOwner < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Email address
      field :email, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('email') } }
      # First name of the company owner
      field :first_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('first_name') } }
      # Last name of the company owner
      field :last_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('last_name') } }


      sig { params(email: T.nilable(String), first_name: T.nilable(String), last_name: T.nilable(String)).void }
      def initialize(email: nil, first_name: nil, last_name: nil)
        @email = email
        @first_name = first_name
        @last_name = last_name
      end
    end


    class Company < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Country Code in Alpha-2 format (ISO 3166-1)
      field :country_alpha2, T.nilable(Shared::CountryAlpha2), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('country_alpha2'), 'decoder': Utils.enum_from_string(Shared::CountryAlpha2, true) } }
      # Date and time when the company was created
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Readable identifier prefixed with ES (Easyship) and destination country code
      field :easyship_company_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('easyship_company_id') } }
      # Company name
      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :organization, T.nilable(Shared::Organization), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('organization') } }

      field :owner, T.nilable(Shared::CompanyOwner), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('owner') } }
      # Date and time when the company was last updated
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(country_alpha2: T.nilable(Shared::CountryAlpha2), created_at: T.nilable(DateTime), easyship_company_id: T.nilable(String), name: T.nilable(String), organization: T.nilable(Shared::Organization), owner: T.nilable(Shared::CompanyOwner), updated_at: T.nilable(DateTime)).void }
      def initialize(country_alpha2: nil, created_at: nil, easyship_company_id: nil, name: nil, organization: nil, owner: nil, updated_at: nil)
        @country_alpha2 = country_alpha2
        @created_at = created_at
        @easyship_company_id = easyship_company_id
        @name = name
        @organization = organization
        @owner = owner
        @updated_at = updated_at
      end
    end
  end
end
