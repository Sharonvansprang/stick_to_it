class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  # validates :challenge, uniqueness: true

end
