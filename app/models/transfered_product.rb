class TransferedProduct < ActiveRecord::Base
  belongs_to :transfer
  belongs_to :product
  attr_accessible :quantity, :product_id, :transfer_id
#accepts_nested_attributes_for :products
 end
