# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/organization_single'

module Easyship
  module Operations

    class CreateOrganizationsResponse < Easyship::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # organization successfully created
      field :organization_single, T.nilable(Shared::OrganizationSingle)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, organization_single: T.nilable(Shared::OrganizationSingle), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, organization_single: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @organization_single = organization_single
        @raw_response = raw_response
      end
    end
  end
end
