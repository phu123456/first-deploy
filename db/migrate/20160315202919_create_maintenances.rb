class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.decimal :engine_oil
      t.decimal :transmission_oil
      t.decimal :gear_oil
      t.decimal :air_filter
      t.decimal :water_coolant
      t.decimal :cement_blower

      t.timestamps null: false
    end
  end
end
