class AddSingleSetsColumnToWorkoutExercises < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :single_sets, :text, :limit => 4294967295
  end
end
