require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/hash_with_indifferent_access'

module Ecm
  module Contact
    module Configuration
      def configure
        yield self
      end

      mattr_accessor :recipients
      @@recipients = {}
      
      def recipients=(recipients)
        @@recipients = HashWithIndifferentAccess.new(recipients)
      end
    end
  end
end
