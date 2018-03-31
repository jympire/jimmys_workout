class AddGroupToExercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :group, :string
  end
end
