class MissionsController < ApplicationController
  def new
    @mission = Mission.new
  end

  def create 
    byebug
  end
end
