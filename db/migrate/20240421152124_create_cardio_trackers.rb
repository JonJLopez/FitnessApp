class CreateCardioTrackers < ActiveRecord::Migration[7.1]
  def change
    create_table :cardio_trackers do |t|
      t.integer :miles
      t.integer :minutes
      t.integer :seconds
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
