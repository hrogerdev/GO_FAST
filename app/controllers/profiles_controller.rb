class ProfilesController < ApplicationController

    def show
        @offers = current_user.offers
        @offers << current_user.jobs
        @current_user = current_user
        if current_user.mules
            @mules = current_user.mules
        end
        @mule = Mule.new
        # raise
        if current_user
            render "show"
        else
            redirect_to new_user_session_path
        end
    end
end
