class ScientistsController < ApplicationController
  def index
    @scientists = Scientist.all
    @yay = "Science is cool!"
    # render :index
  end

  def show
    @scientist = Scientist.find(params[:id])
  end

  def new
    @scientist = Scientist.new
    render :new
  end

  def create
    @scientist = Scientist.new(run_strong_params_for_scientist)
    if @scientist.save
      redirect_to scientist_path(@scientist) # show page
    else 
      render :new 
    end
  end

  def edit
    @scientist = Scientist.find(params[:id])
    render :edit
  end

  def update
    @scientist = Scientist.find(params[:id])
    @scientist.update(run_strong_params_for_scientist)
    if @scientist.valid?
      redirect_to scientist_path(@scientist)
    else 
      render :edit 
    end

  end

  def destroy
    Scientist.destroy(params[:id])
    redirect_to scientists_path
  end

  private 

  def run_strong_params_for_scientist
    params.require(:scientist).permit(:name, :field_of_study)
  end

end
