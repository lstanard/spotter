module WorkoutExercisesHelper

  def render_delete_workout_exercise_path(id, workout)
    link_to 'X', workout_exercise_path(id, :workout_id => workout.id), method: :delete, data: { confirm: 'Are you sure?' }
  end
end
