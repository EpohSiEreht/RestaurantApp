class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @foods = Food.new
    @current_user = User.find(session[:user_id])
  end

  def create
    Food.create( food_params )
    redirect_to food_items_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :price, :type)
  end

end
