class AddTransmissionIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :transmission_id, :integer
  end
end
