# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/organization'

module Easyship
  module Shared
    # Organizations detail
    class OrganizationSingle < ::Easyship::Utils::FieldAugmented
      extend T::Sig


      field :organization, T.nilable(Shared::Organization), { 'format_json': { 'letter_case': ::Easyship::Utils.field_name('organization') } }


      sig { params(organization: T.nilable(Shared::Organization)).void }
      def initialize(organization: nil)
        @organization = organization
      end
    end
  end
end
