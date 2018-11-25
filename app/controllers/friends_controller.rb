class FriendsController < ApplicationController
    before_action :authenticate_user
    
    def show
        @users = current_user 
        render json: @users
    end
end
