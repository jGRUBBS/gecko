require 'gecko/record/base'

module Gecko
  module Record
    class InvoiceLineItem < Base
      belongs_to :invoice
      # belongs_to :ledger_account
      attribute :ledger_account_id, Integer
      belongs_to :order_line_item

      attribute :quantity, BigDecimal
      attribute :position, Integer
    end

    class InvoiceLineItemAdapter < BaseAdapter

    end
  end
end
