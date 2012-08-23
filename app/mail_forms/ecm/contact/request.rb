module Ecm
  module Contact
    class Request < MailForm::Base
      attribute :name 
      attribute :email
      attribute :phone
      attribute :message 
      attribute :terms_of_service
      attribute :nickname,  :captcha  => true    
      
      validates :email, :format => { :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, :message => I18n.t("activerecord.errors.messages.invalid") }
      validates :message, :presence => { :message => I18n.t("activerecord.errors.messages.empty") }
      validates :name, :presence => { :message => I18n.t("activerecord.errors.messages.empty") }
      validates :terms_of_service, :acceptance => { :message => I18n.t("activerecord.errors.messages.accepted") }

      # Declare the e-mail headers. It accepts anything the mail method
      # in ActionMailer accepts.
      def headers
        {
          :subject => I18n.t('ecm.contact.request.subject', :application_name => Rails.application.class.to_s.split("::").first),
          :to => I18n.t('ecm.contact.request.recipients'),
          :from => %("#{name}" <#{email}>)
        }
      end   
    end
  end
end
