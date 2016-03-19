class AddTruckIdToGears < ActiveRecord::Migration
  def change
    add_column :gears, :truck_id, :integer
  end
end
