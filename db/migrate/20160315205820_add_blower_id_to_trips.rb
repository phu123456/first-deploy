class AddBlowerIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :blower_id, :integer
  end
end
