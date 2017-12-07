class ExercisesController < ApplicationController
  def index
  end

  def new
    @exercise = Exercise.new
  end
end
