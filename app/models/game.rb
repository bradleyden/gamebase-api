class Game < ApplicationRecord
  belongs_to :user
  has_many :playthroughs, dependent: :destroy
  validates :title, :genre, :platform, :user, presence: true
end
