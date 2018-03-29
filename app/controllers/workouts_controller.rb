class WorkoutsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_workout, only: [:show, :edit, :update, :destroy]
  
  def index
    @workouts = Workout.all.order("created_at DESC")
  end
  
  def show
  end
  
  def new
    @workout = current_user.workouts.build
  end
  
  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to @workout, notice: "Saved."
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def workout_params
    params.require(:workout).permit(:date, :workout, :comment, :length)
  end
  
  def find_workout
    @workout = Workout.find(params[:id])
  end
end

