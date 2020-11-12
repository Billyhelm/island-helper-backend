class UserBugsController < ApplicationController
    
    def index
        user_bugs = UserBug.all
        render json: user_bugs
    end

    def show
        user_bug = UserBug.find(params[:id])
        render json: user_bug
    end

    def create
        new_user_bug = UserBug.create(post_params)
        user = User.find(new_user_bug.user_id)
        render json: user, include: {fishes: {include: {availability: {}}}, bugs: {include: {availability: {}}}, villagers: {} }
    end

    def destroy
        user_bug = UserBug.find(params[:id])
        user_bug.destroy
    end

    private
    def post_params
        params.require(:user_bug).permit(:user_id, :bug_id)
    end

end