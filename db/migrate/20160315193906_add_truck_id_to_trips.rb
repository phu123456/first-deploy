class AddTruckIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :truck_id, :integer
  end
end
