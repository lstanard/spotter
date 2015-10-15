module ExercisesHelper

  def render_delete_exercise_path(exercise)
    link_to 'Delete', exercise_path(exercise), method: :delete, data: { confirm: 'Are you sure?' }
  end
end
