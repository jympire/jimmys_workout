class AddWorkoutTypeToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :workout_type, :string
  end
end
