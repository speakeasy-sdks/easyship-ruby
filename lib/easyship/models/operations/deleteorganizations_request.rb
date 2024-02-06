# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module Easyship
  module Operations
  

    class DeleteOrganizationsRequest < ::Easyship::Utils::FieldAugmented
      extend T::Sig

      # Organization ID provided when creating the organization
      field :organization_id, ::String, { 'path_param': { 'field_name': 'organization_id', 'style': 'simple', 'explode': false } }


      sig { params(organization_id: ::String).void }
      def initialize(organization_id: nil)
        @organization_id = organization_id
      end
    end
  end
end
