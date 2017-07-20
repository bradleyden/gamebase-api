class Game < ApplicationRecord
  belongs_to :user
  validates :title, :genre, :release, :developer, :publisher, :platform, :playtime, :user, presence: true
end
