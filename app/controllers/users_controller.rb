class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, user_villagers: {include: {villager: {}}} }
    end
    
    def show
        user = User.find(params[:id])
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, user_villagers: {include: {villager: {}}} }
    end

    def show_alt
        user = User.where({name: params[:name]})
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, user_villagers: {include: {villager: {}}} }
    end

    def create
        new_user = User.create(user_params)
        render json: new_user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, user_villagers: {include: {villager: {}}} }
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :town_name, :hemisphere) 
    end
end
