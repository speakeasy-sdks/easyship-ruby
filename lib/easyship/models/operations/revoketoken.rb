# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/revokeaccesstokenresponse'

module OpenApiSDK
  module Operations

    class RevokeTokenResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # Revoke Access Token
      field :revoke_access_token_response, T.nilable(Shared::RevokeAccessTokenResponse)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), revoke_access_token_response: T.nilable(Shared::RevokeAccessTokenResponse)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, revoke_access_token_response: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @revoke_access_token_response = revoke_access_token_response
      end
    end
  end
end
