# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module EasyshipApi
  module Shared
    # ErrorErrorType - The type of error returned.
    class ErrorErrorType < T::Enum
      enums do
        INVALID_REQUEST_ERROR = new('invalid_request_error')
        API_ERROR = new('api_error')
      end
    end



    class ErrorError < EasyshipApi::Utils::FieldAugmented
      extend T::Sig

      # A short code that represents the error.
      field :code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('code') } }
      # An array of human-readable messages providing detailed information about the error.
      field :details, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('details') } }
      # A human-readable message providing brief information about the error.
      field :message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }
      # An unique ID represent the request.
      field :request_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('request_id') } }
      # The type of error returned.
      field :type, T.nilable(Shared::ErrorErrorType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::ErrorErrorType, true) } }


      sig { params(code: T.nilable(String), details: T.nilable(T::Array[String]), message: T.nilable(String), request_id: T.nilable(String), type: T.nilable(Shared::ErrorErrorType)).void }
      def initialize(code: nil, details: nil, message: nil, request_id: nil, type: nil)
        @code = code
        @details = details
        @message = message
        @request_id = request_id
        @type = type
      end
    end

    # Error
    class Error < EasyshipApi::Utils::FieldAugmented
      extend T::Sig


      field :error, T.nilable(Shared::ErrorError), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('error') } }


      sig { params(error: T.nilable(Shared::ErrorError)).void }
      def initialize(error: nil)
        @error = error
      end
    end
  end
end
