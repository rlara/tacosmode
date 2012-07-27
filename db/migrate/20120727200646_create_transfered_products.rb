class CreateTransferedProducts < ActiveRecord::Migration
  def change
    create_table :transfered_products do |t|
      t.references :transfer
      t.references :product
      t.integer :quantity

      t.timestamps
    end
    add_index :transfered_products, :transfer_id
    add_index :transfered_products, :product_id
  end
end
