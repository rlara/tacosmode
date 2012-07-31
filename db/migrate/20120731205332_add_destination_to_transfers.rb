class AddDestinationToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :destination, :string
  end
end
