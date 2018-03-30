class AddLinkToExercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :link, :string
  end
end
