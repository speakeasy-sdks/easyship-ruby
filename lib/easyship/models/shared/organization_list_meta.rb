# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module Easyship
  module Shared
  

    class OrganizationListMeta < ::Easyship::Utils::FieldAugmented
      extend T::Sig

      # Pagination
      field :pagination, T.nilable(::Easyship::Shared::Pagination), { 'format_json': { 'letter_case': ::Easyship::Utils.field_name('pagination') } }


      sig { params(pagination: T.nilable(::Easyship::Shared::Pagination)).void }
      def initialize(pagination: nil)
        @pagination = pagination
      end
    end
  end
end
