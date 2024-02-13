# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module Easyship
  module Shared
  

    class SuccessSuccess < ::Easyship::Utils::FieldAugmented
      extend T::Sig


      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::Easyship::Utils.field_name('message') } }


      sig { params(message: T.nilable(::String)).void }
      def initialize(message: nil)
        @message = message
      end
    end
  end
end