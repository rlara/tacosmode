class Branch < ActiveRecord::Base
  has_many :stock_items
  has_many :transfers	
  attr_accessible :location, :name

validates :name, :location, :presence => true

end
