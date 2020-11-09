class Api::V1::AuthController < ApplicationController

  def fake_create # POST /api/v1/login
    byebug
  end

  def create # POST /api/v1/login

    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      token = encode("user_id": @user.id)
      render json: {
        authenticated: true,
        message: "login success",
        token: token,
        user: @user,
      }, status: :accepted
    else
        render json: {
        authenticated: false,
        message: "login failed"
      }, status: :unauthorized 
    end
  end

end
