class Renamecolumnname < ActiveRecord::Migration
  def up
    rename_column :products, :type, :units
  end

  def down
    rename_column :products, :units, :type
  end
end
