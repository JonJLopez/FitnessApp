class CreateWeightTrackers < ActiveRecord::Migration[7.1]
  def change
    create_table :weight_trackers do |t|
      t.string :exercise
      t.integer :weight
      t.integer :reps
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
