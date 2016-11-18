class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :buddy_achievement, class_name: 'Achievement', foreign_key: :buddy_achievement_id
  belongs_to :challenge
  has_many :progresses, dependent: :destroy

  validates :startdate, presence: true
  validates :challenge, uniqueness: {scope: :user}
  validate :start_date_valid?, :not_own_buddy?

  after_destroy :remove_from_buddy

  private

  def remove_from_buddy
    if buddy_achievement
      buddy_achievement.buddy_achievement_id = nil
      buddy_achievement.save
    end
    true
  end

  def start_date_valid?

    return if startdate.blank?

    if startdate < Date.today
      errors.add(:startdate, "You can't retroactively start a challenge!")
      return false
    end
    true
  end


  def not_own_buddy?
    if persisted? && buddy_achievement_id == self.id
      errors.add(:buddy_achievement, "You can't be your own buddy!")
      return false
    end
    true
  end

end



# Start_Transactie

# Mijn achievement versijst(buddy) naar Feiko
# Feikos acchievment verwijst naar mij

# Commit transactie
