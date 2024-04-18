class CreateOneRepMaxes < ActiveRecord::Migration[7.1]
  def change
    create_table :one_rep_maxes do |t|
      t.integer :DeadliftMax
      t.integer :ShoulderPressMax
      t.integer :SquatMax
      t.integer :ChestPressMax

      t.timestamps
    end
  end
end
