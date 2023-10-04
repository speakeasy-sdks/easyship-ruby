# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/token_type'

module OpenApiSDK
  module Shared

    class OAuth2IntrospectResponsePlatform < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Platform ID
      field :id, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      # Platform Name
      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }


      sig { params(id: T.nilable(Integer), name: T.nilable(String)).void }
      def initialize(id: nil, name: nil)
        @id = id
        @name = name
      end
    end

    # OAuth 2 Introspect Response
    class OAuth2IntrospectResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('active') } }
      # OAuth 2 Client ID
      field :client_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('client_id') } }
      # Easyship Company ID
      field :easyship_company_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('easyship_company_id') } }

      field :exp, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('exp') } }

      field :iat, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('iat') } }

      field :platform, T.nilable(Shared::OAuth2IntrospectResponsePlatform), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('platform') } }
      # OAuth 2 Scopes separated by space. All Enterprise and Public API scopes are supported, but they must be allowed on the Enterprise API Client Application on the Dashboard.
      field :scope, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('scope') } }
      # OAuth 2 Token Type
      field :token_type, T.nilable(Shared::TokenType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('token_type'), 'decoder': Utils.enum_from_string(Shared::TokenType, true) } }


      sig { params(active: T.nilable(T::Boolean), client_id: T.nilable(String), easyship_company_id: T.nilable(String), exp: T.nilable(Integer), iat: T.nilable(Integer), platform: T.nilable(Shared::OAuth2IntrospectResponsePlatform), scope: T.nilable(String), token_type: T.nilable(Shared::TokenType)).void }
      def initialize(active: nil, client_id: nil, easyship_company_id: nil, exp: nil, iat: nil, platform: nil, scope: nil, token_type: nil)
        @active = active
        @client_id = client_id
        @easyship_company_id = easyship_company_id
        @exp = exp
        @iat = iat
        @platform = platform
        @scope = scope
        @token_type = token_type
      end
    end
  end
end
