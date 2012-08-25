class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.references :location
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
    add_index :events, :location_id
  end
end
