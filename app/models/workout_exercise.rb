class WorkoutExercise < ActiveRecord::Base
  belongs_to :workout
  has_one :exercise
  # has_many :single_sets, dependent: :destroy

  def exercise
    Exercise.find(self.exercises_id)
  end
end
