class AddTruckIdToBlowers < ActiveRecord::Migration
  def change
    add_column :blowers, :truck_id, :integer
  end
end
