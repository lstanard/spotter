class SingleSet < ActiveRecord::Base
  belongs_to :workout_exercise
  has_many :user_records, dependent: :destroy
end
