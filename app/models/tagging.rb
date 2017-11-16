class Tagging < ApplicationRecord
  belongs_to :recipe
  belongs_to :user_tag
end
