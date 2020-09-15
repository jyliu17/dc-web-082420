class TacosController < ApplicationController

  def index
    @tacos = Taco.all
    # print_variable
    render(:index)
  end

  def show
    id = params[:id]
    @taco = Taco.find(id)


    # tacos = Taco.all 

    # @taco = tacos.find do |taco|
    #   taco.id == params[:id].to_i
    # end
    
    # @taco = Taco.find(params[:id])
  end

  # def print_variable
  #   puts @tacos 
  # end


end