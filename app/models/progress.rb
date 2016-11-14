class Progress < ApplicationRecord
  belongs_to :achievement


  MOOD = ["very happy", "stressed out", "neutral"]

  validates :mood, inclusion: { in: MOOD, allow_nil: true }
  validates :day, presence: true

end
