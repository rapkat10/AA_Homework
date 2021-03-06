class UsersController < ApplicationController
    before_action :require_signed_in!, only: [:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            log_in(@user)
            redirect_to subs_url
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
