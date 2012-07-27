class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.references :branch
      t.string :mode
      t.string :name_dealer
      t.datetime :date_output
      t.datetime :date_supply

      t.timestamps
    end
    add_index :transfers, :branch_id
  end
end
