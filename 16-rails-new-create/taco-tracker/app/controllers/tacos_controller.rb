class TacosController < ApplicationController

  def index # list page (all tacos)
    if params[:vegetarian] == "true"
      # show only veg tacos 
      @tacos = Taco.vegetarian
    elsif params[:vegetarian] == "false" 
      # show meat tacos 
      @tacos = Taco.meat
    else
      @tacos = Taco.all
    end
    render(:index)
  end

  def show # detail page (single taco)
    id = params[:id]
    @taco = Taco.find(id)
  end

  def print
    puts "I have received a request"
    redirect_to tacos_path
  end

  def new
    @taco = Taco.new
    render :new
  end
  
  def create
    name = params["taco"]["name"]
    price = params["taco"]["price"]
    veg = params["taco"]["vegetarian"]
    taco = Taco.create(name: name,
                price: price,
                vegetarian: veg)
    redirect_to taco_path(taco)
    
  end

end