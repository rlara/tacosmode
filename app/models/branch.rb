class Branch < ActiveRecord::Base
  has_many :stock_items
  has_many :transfers
  attr_accessible :location, :name
accepts_nested_attributes_for :transfers
accepts_nested_attributes_for :stock_items
validates :name, :location, :presence => true

end
