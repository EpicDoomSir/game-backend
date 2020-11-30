class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end

    def create
        game = Game.create!(game_params)
        render json: game
    end

    private

    def game_params
        params.permit(:title, :time)
    end
end
