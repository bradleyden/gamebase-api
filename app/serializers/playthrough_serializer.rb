class PlaythroughSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :game, :date_started, :date_finished, :time, :completion
end
