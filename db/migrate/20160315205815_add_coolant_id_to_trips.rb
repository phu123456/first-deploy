class AddCoolantIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :coolant_id, :integer
  end
end
