class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      flash[:success] = "Workout successfully saved"
      redirect_to exercises_path
    else
      render 'new'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name)
  end
end
