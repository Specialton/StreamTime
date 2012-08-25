class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :job_type

      t.timestamps
    end
    add_index :jobs, :job_type_id
  end
end
