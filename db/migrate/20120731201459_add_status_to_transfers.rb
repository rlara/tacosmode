class AddStatusToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :status, :string
  end
end
