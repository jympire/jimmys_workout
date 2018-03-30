class AddVideoToExercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :video, :url
  end
end
