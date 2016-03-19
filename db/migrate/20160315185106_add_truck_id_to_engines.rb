class AddTruckIdToEngines < ActiveRecord::Migration
  def change
    add_column :engines, :truck_id, :integer
  end
end
