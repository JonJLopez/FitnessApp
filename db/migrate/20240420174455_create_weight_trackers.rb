class CreateWeightTrackers < ActiveRecord::Migration[7.1]
  def change
    create_table :weight_trackers do |t|
      t.string :exercise
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
