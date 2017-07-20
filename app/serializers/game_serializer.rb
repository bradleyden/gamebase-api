class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :release, :developer, :publisher, :platform, :playtime
end
