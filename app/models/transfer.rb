class Transfer < ActiveRecord::Base
  belongs_to :branch
  has_many :transfered_products
  attr_accessible :date_output, :date_supply, :mode, :name_dealer, :destination

  before_create :create_status

  def create_status
    self.status = "pending"
  end

DEALER = ['Roberto', 'Sergio', 'Carlos']
MODE = ['Salida', 'Cierre', 'Proveedor']

  class << self
    DEALER.each do |name_dealer|
      define_method "cat_#{name_dealer}" do
        name_dealer
      end
    end
    MODE.each do |name_mode|
      define_method "cat_#{name_mode}" do
        name_mode
      end
    end

  end

end
