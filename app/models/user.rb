class User < ApplicationRecord
  has_secure_password
  has_many :meal_plans
  has_many :recipes
  has_many :user_tags

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, on: :create, presence: true, length: { minimum: 8 }
end
