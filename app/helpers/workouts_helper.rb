module WorkoutsHelper

  def get_rep_count(workout_exercise)
    workout_exercise.sets.to_i
  end

  def render_delete_workout_path(workout)
    link_to 'Delete', workout_path(workout), method: :delete, data: { confirm: 'Are you sure?' }
  end
end
