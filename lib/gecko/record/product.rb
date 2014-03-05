require 'gecko/record/base'

module Gecko
  module Record
    class Product < Base

      has_many :variants
      attribute :name,         String
      attribute :description,  String
      attribute :product_type, String
      attribute :supplier,     String
      attribute :status,       String
      attribute :tags,         String
      attribute :opt1,         String
      attribute :opt2,         String
      attribute :opt3,         String
      attribute :image_url,    String

      # attribute :quantity
      # attribute :search_cache
    end

    class ProductAdapter < BaseAdapter
    end
  end
end