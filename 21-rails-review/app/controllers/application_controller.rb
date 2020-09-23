class ApplicationController < ActionController::Base
    def about
        @num_scientists = Scientist.count 
        @num_planets = Planet.count
        render :about
    end 
end
