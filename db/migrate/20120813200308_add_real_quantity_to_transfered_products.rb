class AddRealQuantityToTransferedProducts < ActiveRecord::Migration
  def change
    add_column :transfered_products, :quantity_entry, :integer
  end
end
