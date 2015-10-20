require 'gecko/record/base'

module Gecko
  module Record
    class StockAdjustment < Base
      has_many :stock_adjustment_line_items

      attribute :stock_location_id, Integer
      attribute :reason,            String
      attribute :adjustment_number, String
      attribute :notes,             String
    end

    class StockAdjustmentAdapter < BaseAdapter

    end
  end
end
