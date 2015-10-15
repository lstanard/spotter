class WorkoutsController < ApplicationController

  before_filter :authorize

  def new
    @workout = Workout.new
    @user = User.find(session[:user_id])
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update_attributes(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_url
  end

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  private

    def workout_params
      params.require(:workout).permit(:user_id, :name, :date, :notes)
    end
end
