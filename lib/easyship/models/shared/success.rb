# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module EasyshipApi
  module Shared

    class SuccessSuccess < EasyshipApi::Utils::FieldAugmented
      extend T::Sig


      field :message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }


      sig { params(message: T.nilable(String)).void }
      def initialize(message: nil)
        @message = message
      end
    end

    # General success response
    class Success < EasyshipApi::Utils::FieldAugmented
      extend T::Sig


      field :success, T.nilable(Shared::SuccessSuccess), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('success') } }


      sig { params(success: T.nilable(Shared::SuccessSuccess)).void }
      def initialize(success: nil)
        @success = success
      end
    end
  end
end
