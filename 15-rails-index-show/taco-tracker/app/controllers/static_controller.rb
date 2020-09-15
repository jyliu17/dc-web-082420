class StaticController < ApplicationController

    def hello_world
        # get these things from database
        # sort those things
        # log this to a file
        # email my mom
        render :hello
    end

    def about 
        @cohort_name = "Git Lit"
        # render :about
    end

    def favorites 
        @favorites = ["Bacon Taco", "Spinach Taco", "Cheddar Taco"]
        # render :favorites

    end
    
    def greetings
        @name = params[:name]
        render :greetings
    end 
end
