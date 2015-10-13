require 'gecko/record/base'

module Gecko
  module Record
    class User < Base
      attribute :first_name,         String
      attribute :last_name,          String
      attribute :location,           String
      attribute :mobile,             String
      attribute :phone_number,       String
      attribute :position,           String

      attribute :avatar_url,         String,   readonly: true
      attribute :billing_contact,    Boolean,  readonly: true
      attribute :email,              String,   readonly: true
      attribute :last_sign_in_at,    DateTime, readonly: true
      attribute :status,             String,   readonly: true

      # attribute :sales_report_email, Boolean
      # attribute :action_items_email, String

      # attribute :notification_email, Boolean
      # attribute :permisssions,       Array[String]
      # attribute :account_id,         Integer

      ## DEPRECATED
      attribute :mobile_phone,       String
    end

    class UserAdapter < BaseAdapter
      undef :build

      # Return the the logged in user
      #
      # @return [Gecko::Record::User]
      #
      # @api public
      def current
        if self.has_record_for_id?(:current)
          record_for_id(:current)
        else
          @identity_map[:current] = find(:current)
        end
      end
    end
  end
end
