class FlagsController < ApplicationController
  before_action :authorized, except: [:index, :show, :best_flag]

  def index
    @flags = Flag.all
  end

  def show
    @flag = Flag.find(params[:id])
  end

  def best_flag
    @flag = Flag.find_by(rating: 5)
    render :best_flag_view
  end

  def new
    @flag = Flag.new
    @ratings = [1, 2, 3, 4, 5]
    @flag_types = ["National", "State/Territory", "Regional", "Municipal", "Historical", "Humorous"]
  end

  def create
    flag = Flag.create(flag_params)
    redirect_to flag_path(flag)
  end

  private

  def flag_params
    params.require(:flag).permit(:region, :current, :info, :flag_type, :image_url, :rating)
  end

end
