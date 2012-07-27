class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :sku
      t.date :date
      t.string :type
      t.integer :lote

      t.timestamps
    end
  end
end
