class UserRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  belongs_to :single_set
end
