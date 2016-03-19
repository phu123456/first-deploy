class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :trip_date
      t.text :driver
      t.decimal :weight
      t.boolean :trip_type
      t.decimal :liter
      t.decimal :distance
      t.float :average
      t.text :cement
      t.text :destination

      t.timestamps null: false
    end
  end
end
