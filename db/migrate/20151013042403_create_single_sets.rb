class CreateSingleSets < ActiveRecord::Migration
  def change
    create_table :single_sets do |t|
      t.references :workout_exercises, index: true
      t.integer :reps
      t.integer :weight

      t.timestamps null: false
    end
  end
end
