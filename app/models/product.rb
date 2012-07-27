class Product < ActiveRecord::Base
  attr_accessible :date, :lote, :name, :sku, :units

  validates :name, :lote, :sku, :units, :presence => true

before_create :create_status

  def create_status
      self.status = TRUE
  end

end
