class PrizesController < ApplicationController
    def index
        prizes = Prize.all
        render json: prizes
    end

    def show
        prize = Prize.find(params[:id])
        render json: prize
    end

    def create
        prize = Prize.create!(prize_params)
        render json: prize
    end
    
    def destroy
        prize = Prize.find(params[:id])
        prize.destroy!
        render json: {}
    end

    def update
        prize = Prize.find(params[:id])
        prize.update!(prize_params)
        render json: prize
    end

    private

    def prize_params
        params.permit(:name, :cost, :description, :image_url)
    end
end
