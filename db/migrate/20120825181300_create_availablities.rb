class CreateAvailablities < ActiveRecord::Migration
  def change
    create_table :availablities do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
