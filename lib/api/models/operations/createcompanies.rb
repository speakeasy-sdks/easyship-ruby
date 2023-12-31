# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/company_single'

module Easyship
  module Operations

    class CreateCompaniesResponse < Easyship::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # company successfully created
      field :company_single, T.nilable(Shared::CompanySingle)
      # invalid params
      field :error, T.nilable(Shared::Error)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, company_single: T.nilable(Shared::CompanySingle), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, company_single: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @company_single = company_single
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
