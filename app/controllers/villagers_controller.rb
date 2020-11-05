class VillagersController < ApplicationController

    def index
        villagers = Villager.all 
        render json: villagers, include: {users: {}}
    end 

end
