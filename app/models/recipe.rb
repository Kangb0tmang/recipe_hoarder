class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :meal_plan
  has_many :user_tags
end
