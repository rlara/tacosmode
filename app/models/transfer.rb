class Transfer < ActiveRecord::Base
  belongs_to :branch
  has_many :transfered_products
  attr_accessible :date_output, :date_supply, :mode, :name_dealer
DEALER = ['Roberto', 'Sergio', 'Carlos']

  class << self
    DEALER.each do |dealer_name|
      define_method "cat_#{dealer_name}" do
        dealer_name
      end
    end
  end

end
