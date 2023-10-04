# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    # GrantType - OAuth 2 Grant Type
    class GrantType < T::Enum
      enums do
        CLIENT_CREDENTIALS = new('client_credentials')
      end
    end

  end
end
