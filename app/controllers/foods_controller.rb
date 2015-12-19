class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
    @current_user = User.find(session[:user_id])
  end

  def create
    Food.create( food_params )
    redirect_to foods_path
  end

  def edit
    @food = Food.find(params[:id])
  end

  def show
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update( food_params )
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :price, :type)
  end

end
