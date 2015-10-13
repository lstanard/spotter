class WorkoutExercise < ActiveRecord::Base
  belongs_to :workout
  has_one :exercise
  has_many :single_sets, dependent: :destroy
end
