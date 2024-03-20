# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module Easyship
  module Operations
  

    class RevokeTokenResponse < ::Easyship::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Revoke Access Token
      field :revoke_access_token_response, T.nilable(::Easyship::Shared::RevokeAccessTokenResponse)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, revoke_access_token_response: T.nilable(::Easyship::Shared::RevokeAccessTokenResponse)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, revoke_access_token_response: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @revoke_access_token_response = revoke_access_token_response
      end
    end
  end
end
