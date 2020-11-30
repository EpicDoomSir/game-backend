class GameSessionsController < ApplicationController
    def index
        game_sessions = GameSession.all
        render json: game_sessions
    end

    def create
        game_session = GameSession.create!(game_session_params)
        render json: game_session
    end
    
    def destroy
        game_session = GameSession.find(params[:id])
        game_session.destroy!
        render json: {}
    end

    def update
        game_session = GameSession.find(params[:id])
        game_session.update!(score: params[:score])
        render json: game_session
    end

    private

    def game_session_params
        params.permit(:user_id, :game_id, :score)
    end
end
