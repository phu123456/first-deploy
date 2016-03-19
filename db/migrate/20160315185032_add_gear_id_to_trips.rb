class AddGearIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :gear_id, :integer
  end
end
