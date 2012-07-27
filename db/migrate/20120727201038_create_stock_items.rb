class CreateStockItems < ActiveRecord::Migration
  def change
    create_table :stock_items do |t|
      t.references :branch
      t.references :product
      t.integer :quantity

      t.timestamps
    end
    add_index :stock_items, :branch_id
    add_index :stock_items, :product_id
  end
end
