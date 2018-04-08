class AddLocationToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :location, :string
  end
end
