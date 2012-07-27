class TransferedProduct < ActiveRecord::Base
  belongs_to :Transfer
  belongs_to :product
  attr_accessible :quantity
end
