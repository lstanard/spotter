class Exercise < ActiveRecord::Base
  has_many :workout_exercises
  has_many :user_records, dependent: :destroy
end
