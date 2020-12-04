class UserPrizesController < ApplicationController
    def index
        user_prizes = UserPrize.all
        render json: user_prizes
    end

    def create
        user_prize = UserPrize.create!(user_prize_params)
        render json: user_prize
    end
    
    def destroy
        user_prize = UserPrize.find(params[:id])
        user_prize.destroy!
        render json: {}
    end

    def update
        user_prize = UserPrize.find(params[:id])
        user_prize.update!(user_prize_params)
        render json: user_prize
    end

    private

    def user_prize_params
        params.permit(:user_id, :prize_id)
    end
end
