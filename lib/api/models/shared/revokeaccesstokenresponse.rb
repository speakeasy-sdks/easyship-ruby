# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Easyship
  module Shared

    class RevokeAccessTokenResponse < Easyship::Utils::FieldAugmented
      extend T::Sig


      field :message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status') } }


      sig { params(message: T.nilable(String), status: T.nilable(Integer)).void }
      def initialize(message: nil, status: nil)
        @message = message
        @status = status
      end
    end
  end
end
