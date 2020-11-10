class FishController < ApplicationController

    def index
        fish = Fish.all 
        render json: fish, include: {users: {}, availability: {}}
    end 

end
