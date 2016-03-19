class AddTruckIdToTransmissions < ActiveRecord::Migration
  def change
    add_column :transmissions, :truck_id, :integer
  end
end
