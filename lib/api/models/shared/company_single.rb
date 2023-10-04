# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/company'

module Easyship
  module Shared
    # Account Detail
    class CompanySingle < Easyship::Utils::FieldAugmented
      extend T::Sig


      field :company, T.nilable(Shared::Company), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('company') } }


      sig { params(company: T.nilable(Shared::Company)).void }
      def initialize(company: nil)
        @company = company
      end
    end
  end
end