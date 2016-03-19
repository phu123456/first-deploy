class AddEngineIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :engine_id, :integer
  end
end
