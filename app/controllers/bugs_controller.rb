class BugsController < ApplicationController

    def index
        bugs = Bug.all 
        render json: bugs, include: {users: {}, availability: {}}
    end 
end
