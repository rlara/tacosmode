class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :sku
      t.date :date
      t.string :units
      t.integer :lote
      t.decimal :price
      t.boolean :status	

      t.timestamps
    end
  end
end
