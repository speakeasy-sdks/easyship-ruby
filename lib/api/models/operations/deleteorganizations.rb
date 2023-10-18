# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/success'

module Easyship
  module Operations

    class DeleteOrganizationsRequest < Easyship::Utils::FieldAugmented
      extend T::Sig

      # Organization ID provided when creating the organization
      field :organization_id, String, { 'path_param': { 'field_name': 'organization_id', 'style': 'simple', 'explode': false } }


      sig { params(organization_id: String).void }
      def initialize(organization_id: nil)
        @organization_id = organization_id
      end
    end


    class DeleteOrganizationsResponse < Easyship::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # failed to delete the organization
      field :error, T.nilable(Shared::Error)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # organization successfully deleted
      field :success, T.nilable(Shared::Success)


      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response), success: T.nilable(Shared::Success)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil, success: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @raw_response = raw_response
        @success = success
      end
    end
  end
end
