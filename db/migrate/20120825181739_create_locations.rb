class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.references :contact_info

      t.timestamps
    end
    add_index :locations, :contact_info_id
  end
end
