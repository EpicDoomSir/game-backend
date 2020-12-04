class User < ApplicationRecord
    has_many :game_sessions
    has_many :games, through: :game_sessions
    has_many :user_prizes
    has_many :prizes, through: :user_prizes
end
