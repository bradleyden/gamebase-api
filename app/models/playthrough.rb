class Playthrough < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :game_id, :user_id, :date_started, :date_finished, :time, :completion, presence: true
end
