class ExercisesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(params[:exercise].permit(:name, :sets, :reps, :rest))

    redirect_to workout_path(@workout)
  end
end
