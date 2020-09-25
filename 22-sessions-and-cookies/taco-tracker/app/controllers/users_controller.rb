class UsersController < ApplicationController

    def login 
        render :login_form
    end

    def process_login
       user = User.find_by(username: params[:username])
       if user 
            session[:user_id] = user.id
            redirect_to tacos_path
       else 
            flash.now[:no_user] = "No user found with that name"
            render :login_form
       end
    end

    def logout
        session.clear
        redirect_to login_path
    end
end
