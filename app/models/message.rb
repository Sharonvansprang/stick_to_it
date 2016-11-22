class Message < ApplicationRecord
  belongs_to :achievement
  has_attachment :photo

  scope :my_or_my_buddies, ->(achievement, buddy_achievement) {
    where(achievement: achievement).or(self.where(achievement: buddy_achievement) )
  }
  scope :sorted, ->{ order created_at: :desc }

end
