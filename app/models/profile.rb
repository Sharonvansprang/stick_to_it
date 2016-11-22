class Profile < ApplicationRecord
  belongs_to :user
  has_attachment :photo

  # validates :bio, presence: true, length: { minimum: 100 }

end
