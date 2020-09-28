class ApplicationController < ActionController::Base

    helper_method :current_user, :current_username, :logged_in?

    def current_user
        return User.find_by(id: session[:user_id])
    end
    
    def current_username
        current_user.username
    end

    def logged_in?
        return !!current_user # changes object into Boolean
        # things like nil, "", etc are false
        # things like 5, "hello", or <User> are true
    end

    def authorized
        # redirect_to login_path unless logged_in?
        if !logged_in?
            flash[:message] = "You must be logged in to do that"
            redirect_to login_path
        end
    end
    
    def hello_people
        @person_name = params[:name]
        @person_name ||= "Everyone"
        render "hello"
    end
end
