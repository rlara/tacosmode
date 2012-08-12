class Product < ActiveRecord::Base
  has_many :stock_items
  has_many :transfered_products
  attr_accessible :date, :lote, :name, :sku, :units, :price

  validates :name, :lote, :sku, :units, :presence => true

before_create :create_status

  def create_status
      self.status = TRUE
  end

end
