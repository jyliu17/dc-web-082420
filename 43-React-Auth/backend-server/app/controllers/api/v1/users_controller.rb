class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    token = request.headers["Authentication"].split(" ")[1]

    render json: User.find(decode(token)["user_id"]), status: :accepted
    
  end
  
end
