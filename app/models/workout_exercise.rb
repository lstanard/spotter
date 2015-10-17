class WorkoutExercise < ActiveRecord::Base

  serialize :single_sets, JSON

  belongs_to :workout
  has_one :exercise

  def exercise
    Exercise.find(self.exercises_id)
  end
end
