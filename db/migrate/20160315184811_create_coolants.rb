class CreateCoolants < ActiveRecord::Migration
  def change
    create_table :coolants do |t|

      t.timestamps null: false
    end
  end
end
