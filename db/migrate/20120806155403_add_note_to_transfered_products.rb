class AddNoteToTransferedProducts < ActiveRecord::Migration
  def change
    add_column :transfered_products, :note, :text
  end
end
