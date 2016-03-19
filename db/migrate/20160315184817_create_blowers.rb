class CreateBlowers < ActiveRecord::Migration
  def change
    create_table :blowers do |t|

      t.timestamps null: false
    end
  end
end
