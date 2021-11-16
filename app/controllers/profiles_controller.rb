class ProfilesController < ApplicationController
    def show
        @current_user = current_user
        # raise
        if current_user
            render "show"
        else
            redirect_to new_user_session_path
        end
    end
end
