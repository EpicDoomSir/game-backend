class User < ApplicationRecord
    has_many :game_sessions
    has_many :games, through: :game_sessions
end
