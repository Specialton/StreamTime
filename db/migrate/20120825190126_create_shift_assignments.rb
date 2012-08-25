class CreateShiftAssignments < ActiveRecord::Migration
  def change
    create_table :shift_assignments do |t|
      t.references :shift
      t.references :staffer
      t.references :assignment_status

      t.timestamps
    end
    add_index :shift_assignments, :shift_id
    add_index :shift_assignments, :staffer_id
    add_index :shift_assignments, :assignment_status_id
  end
end
