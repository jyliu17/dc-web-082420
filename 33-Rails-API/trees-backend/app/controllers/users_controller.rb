class UsersController < ApplicationController
    def index
        users = User.all
        render json: users.to_json({include: {trees: {only: [:common_name]}}})
    end

    def create
        user = User.create(user_params)
        render json: user.to_json({include: {trees: {only: [:common_name]}}})
    end

    private

    def user_params
        params.require(:user).permit(:name, :office, :image_url)
    end
end
