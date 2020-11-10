class UserVillagerController < ApplicationController



    private
    def post_params
        params.require(:user_villager).permit(:user_id, :villager_id)
    end

end