class StockItem < ActiveRecord::Base
  belongs_to :branch
  belongs_to :product
  attr_accessible :quantity
end
