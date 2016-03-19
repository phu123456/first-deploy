class AddTruckIdToCoolants < ActiveRecord::Migration
  def change
    add_column :coolants, :truck_id, :integer
  end
end
