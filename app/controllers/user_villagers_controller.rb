class UserVillagersController < ApplicationController

    def index
        user_villagers = UserVillager.all
        render json: user_villagers
    end

    def show
        user_villager = UserVillager.find(params[:id])
        render json: user_villager
    end

    def create
        new_user_villager = UserVillager.create(post_params)
        user = User.find(new_user_villager.user_id)
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, villagers: {} }
    end

    def destroy
        user_villager = UserVillager.find(params[:id])
        user_villager.destroy
    end

    private
    def post_params
        # byebug
        params.require(:user_villager).permit(:user_id, :villager_id)
    end

end