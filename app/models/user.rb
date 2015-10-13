class User < ActiveRecord::Base
  has_many :workouts, dependent: :destroy
  has_many :user_records, dependent: :destroy
end
