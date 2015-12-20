class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    authenticate!
    @food = Food.new
    @current_user = User.find(session[:user_id])
  end

  def create
    authenticate!
    Food.create( food_params )
    redirect_to foods_path
  end

  def edit
    authenticate!
    @food = Food.find(params[:id])
  end

  def show
    authenticate!
    @food = Food.find(params[:id])
  end

  def update
    authenticate!
    food = Food.find(params[:id])
    food.update( food_params )
    redirect_to foods_path
  end

  def destroy
    authenticate!
    Food.delete(params[:id])
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :price, :category)
  end

end
