class CreateShirtSizes < ActiveRecord::Migration
  def change
    create_table :shirt_sizes do |t|
      t.string :size

      t.timestamps
    end
  end
end
