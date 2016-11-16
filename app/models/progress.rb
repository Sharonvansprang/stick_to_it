class Progress < ApplicationRecord
  belongs_to :achievement


  MOOD = ["very happy", "stressed out", "neutral"]

  validates :mood, inclusion: { in: MOOD, allow_nil: false }
  validates :day, presence: true, uniqueness: {scope: :achievement}
  validates :done, default: false, null: false

end
