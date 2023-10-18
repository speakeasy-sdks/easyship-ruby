# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/oauth2tokeninfo'

module Easyship
  module Operations

    class RetrieveInfoResponse < Easyship::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Access Token Info
      field :o_auth2_token_info, T.nilable(Shared::OAuth2TokenInfo)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, o_auth2_token_info: T.nilable(Shared::OAuth2TokenInfo), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, o_auth2_token_info: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @o_auth2_token_info = o_auth2_token_info
        @raw_response = raw_response
      end
    end
  end
end
