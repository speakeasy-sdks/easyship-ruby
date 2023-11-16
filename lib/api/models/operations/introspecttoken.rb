# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/oauth2introspectresponse'

module Easyship
  module Operations

    class IntrospectTokenResponse < Easyship::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Access Token Introspect
      field :o_auth2_introspect_response, T.nilable(Shared::OAuth2IntrospectResponse)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, o_auth2_introspect_response: T.nilable(Shared::OAuth2IntrospectResponse)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, o_auth2_introspect_response: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @o_auth2_introspect_response = o_auth2_introspect_response
      end
    end
  end
end
