class WorkoutExercisesController < ApplicationController

  before_filter :authorize

  def new
    @workout_exercise = WorkoutExercise.new
    @workout = Workout.find(params[:workout_id])
    @exercises = Exercise.all
    @user = User.find(session[:user_id])
  end

  def create
    @workout_exercise = WorkoutExercise.new(workout_exercise_params)
    if @workout_exercise.save
      @workout = Workout.find(@workout_exercise.workouts_id)
      redirect_to @workout
    else
      render 'new'
    end
  end

  def update
    @workout_exercise = WorkoutExercise.find(params[:id])
    @single_sets = params[:workout_exercise][:single_sets]
    puts @single_sets
    if @workout_exercise.update_attributes(workout_exercise_params)
      @workout = Workout.find(@workout_exercise.workouts_id)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def edit
    @workout_exercise = WorkoutExercise.find(params[:id])
    @exercises = Exercise.all
  end

  def destroy
    @workout_exercise = WorkoutExercise.find(params[:id])
    @workout_exercise.destroy
    @workout = Workout.find(params[:workout_id])
    redirect_to @workout
  end

  def show
  end

  private

    def workout_exercise_params
      params.require(:workout_exercise).permit(:workouts_id, :exercises_id, :sets, :target_reps, :rest, :tempo, :notes, {:single_sets => [:reps, :weight]})
    end
end
