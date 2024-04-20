class AddCardioPaceToOneRepMax < ActiveRecord::Migration[7.1]
  def change
    add_column :one_rep_maxes, :cardioMin, :integer
    add_column :one_rep_maxes, :cardioSec, :integer
  end
end
