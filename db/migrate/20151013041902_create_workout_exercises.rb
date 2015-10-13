class CreateWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :workout_exercises do |t|
      t.references :workouts, index: true
      t.references :exercises, index: true
      t.integer :sets
      t.integer :target_reps
      t.integer :rest
      t.integer :tempo
      t.string :notes

      t.timestamps null: false
    end
  end
end
