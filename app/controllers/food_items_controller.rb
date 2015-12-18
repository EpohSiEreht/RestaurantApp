class FoodItemsController < ApplicationController

  def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
    @current_user = User.find(session[:user_id])
  end

  def create
    FoodItem.create( food_params )
    redirect_to food_items_path
  end

  private

  def food_params
    params.require(:food_item).permit(:name, :description, :price)
  end

end
