class UserBugController < ApplicationController

    private
    def post_params
        params.require(:user_bug).permit(:user_id, :bug_id)
    end

end