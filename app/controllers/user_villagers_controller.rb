class UserVillagersController < ApplicationController

    def index
        user_villagers = UserVillager.all
        render json: user_villagers
    end

    def create
        new_user_villager = UserVillager.create(post_params)
        user = User.find(new_user_villager.user_id)
        # byebug
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, user_villagers: {include: {villager: {}}} }
    end

    def delete

    end

    private
    def post_params
        # byebug
        params.require(:user_villager).permit(:user_id, :villager_id)
    end

end