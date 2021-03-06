class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
