class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :description

      t.timestamps
    end
  end
end
