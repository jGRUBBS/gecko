require 'gecko/record/base'

module Gecko
  module Record
    class FulfillmentReturn < Base
      has_many :fulfillment_return_line_items
      belongs_to :order
      belongs_to :location

      attribute :delivery_type,      String
      attribute :exchange_rate,      String
      attribute :notes,              String
      attribute :received_at,        DateTime
      attribute :credit_note_number, String
      attribute :status,             String
      attribute :tracking_company,   String
      attribute :tracking_number,    String
      attribute :tracking_url,       String
    end

    class FulfillmentReturnAdapter < BaseAdapter
    end
  end
end
