require 'gecko/record/base'

module Gecko
  module Record
    class TaxType < Base
      attribute :name,              String
      attribute :code,              String

      # has_many :tax_components
      attribute :can_change_rate,   Boolean,    readonly: true
      attribute :effective_rate,    BigDecimal, readonly: true
      attribute :imported_from,     String,     readonly: true
      attribute :status,            String,     readonly: true
      attribute :xero_online_id,    String,     readonly: true
    end

    class TaxTypeAdapter < BaseAdapter

    end
  end
end
