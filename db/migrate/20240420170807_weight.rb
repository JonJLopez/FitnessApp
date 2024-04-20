class Weight < ActiveRecord::Migration[7.1]
  def change
    create_table :weight do |t|
      t.string :email
      t.string :exercise
      t.integer :reps
      t.integer :weight
      t.integer :set
      t.timestamps
    end
  end
end
