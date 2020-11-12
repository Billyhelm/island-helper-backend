class UserFishesController < ApplicationController
    
    def index
        user_fishes = UserFish.all
        render json: user_fishes
    end

    def show
        user_fish = UserFish.find(params[:id])
        render json: user_fish
    end

    def create
        new_user_fish = UserFish.create(post_params)
        user = User.find(new_user_fish.user_id)
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, villagers: {} }
    end

    def destroy
        user_fish = UserFish.find(params[:id])
        user_fish.destroy
    end

    private
    def post_params
        params.require(:user_fish).permit(:user_id, :fish_id)
    end
end