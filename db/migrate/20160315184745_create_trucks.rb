class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.text :plate
      t.boolean :bulker

      t.timestamps null: false
    end
  end
end
