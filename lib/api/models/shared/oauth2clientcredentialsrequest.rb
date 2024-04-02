# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Easyship
  module Shared
    # OAuth2ClientCredentialsRequestGrantType - OAuth 2 Grant Type
    class OAuth2ClientCredentialsRequestGrantType < T::Enum
      enums do
        CLIENT_CREDENTIALS = new('client_credentials')
      end
    end


    # OAuth 2 Client Credentials Request
    class OAuth2ClientCredentialsRequest < Easyship::Utils::FieldAugmented
      extend T::Sig

      # OAuth 2 Client ID
      field :client_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('client_id') } }
      # OAuth 2 Client Secret
      field :client_secret, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('client_secret') } }
      # OAuth 2 Grant Type
      field :grant_type, Shared::OAuth2ClientCredentialsRequestGrantType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('grant_type'), 'decoder': Utils.enum_from_string(Shared::OAuth2ClientCredentialsRequestGrantType, false) } }
      # OAuth 2 Scopes separated by space. All Enterprise and Public API scopes are supported, but they must be allowed on the Enterprise API Client Application on the Dashboard.
      field :scope, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('scope') } }


      sig { params(client_id: String, client_secret: String, grant_type: Shared::OAuth2ClientCredentialsRequestGrantType, scope: String).void }
      def initialize(client_id: nil, client_secret: nil, grant_type: nil, scope: nil)
        @client_id = client_id
        @client_secret = client_secret
        @grant_type = grant_type
        @scope = scope
      end
    end
  end
end