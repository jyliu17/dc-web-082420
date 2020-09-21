class TacosController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :find_taco, only: [:show, :edit, :update, :switch_veg]
  
  def index # list page (all tacos)
    # if params[:monkey] == "banana"
    #   return redirect_to "https://www.google.com/search?q=monkey"
    # end
    if params[:vegetarian] == "true"
      # show only veg tacos 
      @taco_type = "Vegetarian"
      @tacos = Taco.vegetarian
    elsif params[:vegetarian] == "false" 
      # show meat tacos 
      @taco_type = "Meat"
      @tacos = Taco.meat
    else
      @tacos = Taco.all
    end
    render(:index)
  end

  def show # detail page (single taco)
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
    # name = params["taco"]["name"]
    # price = params["taco"]["price"]
    # veg = params["taco"]["vegetarian"]
    taco = Taco.create(taco_params)
    redirect_to taco_path(taco.id)
    
  end

  def switch_veg
    @taco.vegetarian = !@taco.vegetarian
    @taco.save
    redirect_to taco_path(@taco)
  end

  def edit
    render :edit
  end

  def update
    @taco.update(taco_params)
    redirect_to taco_path(@taco)
  end

  def destroy
    Taco.destroy(params[:id])
    redirect_to tacos_path
  end
  
  private

  def taco_params
    params.require(:taco).permit(:name, :price, :vegetarian, :restaurant_id)
  end

  def find_taco
    @taco = Taco.find(params[:id])
  end
  

end