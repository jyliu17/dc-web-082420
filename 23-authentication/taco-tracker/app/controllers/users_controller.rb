class UsersController < ApplicationController

    def login 
        render :login_form
    end

    def process_login
       user = User.find_by(username: params[:username])
       if user && user.authenticate(params[:password])

            session[:user_id] = user.id
            redirect_to tacos_path
       else 
            flash.now[:no_user] = "No user found with that name/password combination"
            render :login_form
       end
    end

    def logout
        session.clear
        flash[:message] = "You have been logged out"
        redirect_to login_path
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to tacos_path
        else 
            render :new 
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
