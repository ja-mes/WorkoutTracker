class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      flash[:success] = "Workout successfully saved"
      redirect_to workouts_path
    else
      render 'new'
    end
  end

  private
  def workout_params
    params.require(:workout).permit(:description, :date)
  end

end
