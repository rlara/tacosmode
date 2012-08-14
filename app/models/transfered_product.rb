class TransferedProduct < ActiveRecord::Base
  belongs_to :transfer
  belongs_to :product
  attr_accessible :quantity, :product_id, :transfer_id, :note, :difference, :quantity_entry
  validates :quantity, :product_id, :presence => true
 end
