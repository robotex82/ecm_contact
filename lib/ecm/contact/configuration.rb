require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module Contact
    module Configuration
      def configure
        yield self
      end

      mattr_accessor :recipients
      @@recipients = {}
    end
  end
end
