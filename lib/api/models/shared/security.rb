# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Easyship
  module Shared

    class Security < Easyship::Utils::FieldAugmented
      extend T::Sig


      field :o_auth2, String, { 'security': { 'scheme': true, 'type': 'oauth2', 'field_name': 'Authorization' } }


      sig { params(o_auth2: String).void }
      def initialize(o_auth2: nil)
        @o_auth2 = o_auth2
      end
    end
  end
end
