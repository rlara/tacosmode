class RemoveColumnLote < ActiveRecord::Migration
  def up
    remove_column :products, :lote
  end

  def down
    add_column :products, :lote
  end
end
