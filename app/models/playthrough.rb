class Playthrough < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :title, :genre, :release, :developer, :publisher, :platform, :playtime, :user, presence: true
end
