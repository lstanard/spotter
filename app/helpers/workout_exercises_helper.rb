module WorkoutExercisesHelper

  def render_delete_workout_exercise_path(id, workout)
    link_to 'X', workout_exercise_path(id, :workout_id => workout.id), remote: true, method: :delete, data: { confirm: 'Are you sure?' }
    # link_to 'X', workout_exercise_path(id, :workout_id => workout.id), remote: true, method: :delete
  end
end
