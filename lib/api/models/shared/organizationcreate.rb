# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Easyship
  module Shared

    class OrganizationCreate < Easyship::Utils::FieldAugmented
      extend T::Sig

      # Organization name
      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }


      sig { params(name: String).void }
      def initialize(name: nil)
        @name = name
      end
    end
  end
end
