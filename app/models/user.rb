class User < ActiveRecord::Base
  has_secure_password
  validates :email, :user_name, presence: true
  validates :email, :user_name, uniqueness: true

  has_many :questions
  has_many :answers
end
