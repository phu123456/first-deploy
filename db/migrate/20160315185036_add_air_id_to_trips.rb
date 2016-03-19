class AddAirIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :air_id, :integer
  end
end
