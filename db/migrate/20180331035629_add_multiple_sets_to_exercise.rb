class AddMultipleSetsToExercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :set_one, :string
    add_column :exercises, :set_two, :string
    add_column :exercises, :set_three, :string
    add_column :exercises, :set_four, :string
    add_column :exercises, :set_five, :string
  end
end
