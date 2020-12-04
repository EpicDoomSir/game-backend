class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :pin, :total_points, :avatar

  has_many :prizes

  has_many :game_sessions
end
