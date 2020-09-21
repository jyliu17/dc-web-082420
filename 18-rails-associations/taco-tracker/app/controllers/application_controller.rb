class ApplicationController < ActionController::Base


    
    def hello_people
        @person_name = params[:name]
        @person_name ||= "Everyone"
        render "hello"
    end
end
