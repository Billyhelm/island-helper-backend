class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, include: {fishes: {}, bugs: {}, villagers: {}}
    end
    
    def show
        user = User.find(params[:id])
        render json: user, include: {fishes: {}, bugs: {}, villagers: {}}
    end 

end
