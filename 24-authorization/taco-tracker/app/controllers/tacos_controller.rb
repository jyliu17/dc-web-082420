class TacosController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :find_taco, only: [:show, :edit, :update, :switch_veg]
  before_action :authorized, except: [:index, :show]

  def index # list page (all tacos)
    # if params[:monkey] == "banana"
    #   return redirect_to "https://www.google.com/search?q=monkey"
    # end
    if params[:vegetarian] == "true"
      # show only veg tacos 
      cookies[:vegetarian] = true
      @taco_type = "Vegetarian"
      @tacos = Taco.vegetarian
    elsif params[:vegetarian] == "false"
      # show meat tacos 
      @taco_type = "Meat"
      cookies[:vegetarian] = false
      @tacos = Taco.meat
    else
      @tacos = Taco.all
    end
    cookies[:times_visited] ||= 0
    cookies[:times_visited] = cookies[:times_visited].to_i + 1
    render(:index)
  end

  def show # detail page (single taco)
    cookies["favorite_taco"] = "Bacon Taco"
    cookies["last_visited"] = @taco.name
    session["secret_favorite"] = "Banana Taco"
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
    @taco = Taco.new(taco_params)
    if @taco.save 
      redirect_to taco_path(@taco.id)
    else 
      render :new
    end
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
    if @taco.update(taco_params) 
      redirect_to taco_path(@taco)
    else 
      render :edit 
    end
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