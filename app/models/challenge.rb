  class Challenge < ApplicationRecord
  belongs_to :life_goal
  has_many :achievements
end
