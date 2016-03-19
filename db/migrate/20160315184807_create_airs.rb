class CreateAirs < ActiveRecord::Migration
  def change
    create_table :airs do |t|

      t.timestamps null: false
    end
  end
end
