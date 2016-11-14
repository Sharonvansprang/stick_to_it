class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :buddy_achievement, class_name: 'Achievement', foreign_key: :buddy_achievement_id
  belongs_to :challenge
  has_many :progresses

  validates :startdate, presence: true
  validate :start_date_valid?


  private

  def start_date_valid?

    return if startdate.blank?

    if startdate < Date.today
      errors.add(:startdate, "You can't retroactively start a challenge!")
    end
  end
end



# Start_Transactie

# Mijn achievement versijst(buddy) naar Feiko
# Feikos acchievment verwijst naar mij

# Commit transactie
