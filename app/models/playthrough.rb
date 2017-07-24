class Playthrough < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :game_id, :user_id, :game, :date_started, :time, :completion, presence: true
end
