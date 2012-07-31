class Branch < ActiveRecord::Base
  has_many :stock_items
  has_many :transfers
  attr_accessible :location, :name
accepts_nested_attributes_for :transfers
validates :name, :location, :presence => true

end
