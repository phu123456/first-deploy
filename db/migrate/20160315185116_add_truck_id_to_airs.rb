class AddTruckIdToAirs < ActiveRecord::Migration
  def change
    add_column :airs, :truck_id, :integer
  end
end
