class UserFishController < ApplicationController

    private
    def post_params
        params.require(:user_fish).permit(:user_id, :fish_id)
    end
end