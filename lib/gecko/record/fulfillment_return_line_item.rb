require 'gecko/record/base'

module Gecko
  module Record
    class FulfillmentReturnLineItem < Base
      belongs_to :fulfillment_return
      belongs_to :order_line_item
      belongs_to :ledger_account

      attribute :quantity,   BigDecimal
      attribute :position,   Integer
    end

    class FulfillmentReturnLineItemAdapter < BaseAdapter
    end
  end
end
