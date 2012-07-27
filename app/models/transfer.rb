class Transfer < ActiveRecord::Base
  belongs_to :branch
  has_many :transfered_products	
  attr_accessible :date_output, :date_supply, :mode, :name_dealer
end
