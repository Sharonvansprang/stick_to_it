class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  validates :startdate, presence: true
  validates :enddate, presence: true

end
