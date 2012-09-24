require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/hash_with_indifferent_access'

module Ecm
  module Contact
    module Configuration
      def configure
        yield self
      end
      mattr_accessor :input_name_css_classes
      @@input_name_css_classes = nil

      mattr_accessor :input_email_css_classes
      @@input_email_css_classes = nil

      mattr_accessor :input_phone_css_classes
      @@input_phone_css_classes = nil

      mattr_accessor :input_message_css_classes
      @@input_message_css_classes = nil

      mattr_accessor :input_terms_of_service_css_classes
      @@input_terms_of_service_css_classes = nil

      mattr_accessor :recipients
      @@recipients = {}
      
      def recipients=(recipients)
        @@recipients = HashWithIndifferentAccess.new(recipients)
      end
    end
  end
end
