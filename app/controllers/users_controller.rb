class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, villagers: {}}
    end
    
    def show
        user = User.find(params[:id])
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, villagers: {}}
    end 

end
