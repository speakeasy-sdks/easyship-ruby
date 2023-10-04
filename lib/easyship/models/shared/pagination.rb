# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    # Pagination
    class Pagination < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The total number of items. The `null` value is used with countless pagination (used for faster response on large datasets, like shipments).
      field :count, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('count') } }

      field :next_, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('next') } }
      # Current page
      field :page, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('page') } }


      sig { params(count: T.nilable(Integer), next_: T.nilable(Integer), page: T.nilable(Integer)).void }
      def initialize(count: nil, next_: nil, page: nil)
        @count = count
        @next_ = next_
        @page = page
      end
    end
  end
end
