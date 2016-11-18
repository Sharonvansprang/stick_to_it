class Message < ApplicationRecord
  belongs_to :achievement
  has_attachment :photo
end
