class User < ActiveRecord::Base

  has_many :workouts, dependent: :destroy
  has_many :user_records, dependent: :destroy

  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email

  def get_fullname
    self.first_name + ' ' + self.last_name
  end

end
