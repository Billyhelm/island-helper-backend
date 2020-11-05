class FishController < ApplicationController

    def index
        fish = Fish.all 
        render json: fish, include: {users: {}}
    end 

end
