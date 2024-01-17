# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/owner'

module Easyship
  module Shared

    class CompanyUpdate < ::Easyship::Utils::FieldAugmented
      extend T::Sig

      # Company name
      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::Easyship::Utils.field_name('name') } }

      field :owner, T.nilable(Shared::Owner), { 'format_json': { 'letter_case': ::Easyship::Utils.field_name('owner') } }


      sig { params(name: T.nilable(String), owner: T.nilable(Shared::Owner)).void }
      def initialize(name: nil, owner: nil)
        @name = name
        @owner = owner
      end
    end
  end
end
