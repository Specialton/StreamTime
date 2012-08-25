class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.references :job
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.references :location

      t.timestamps
    end
    add_index :shifts, :job_id
    add_index :shifts, :location_id
  end
end
