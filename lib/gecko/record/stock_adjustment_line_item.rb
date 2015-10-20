require 'gecko/record/base'

module Gecko
  module Record
    class StockAdjustmentLineItem < Base
      belongs_to :stock_adjustment
      belongs_to :variant

      attribute :position, Integer
      attribute :quantity, BigDecimal
    end

    class StockAdjustmentLineItemAdapter < BaseAdapter
    end
  end
end
