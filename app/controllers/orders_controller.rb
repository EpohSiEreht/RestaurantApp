class OrdersController < ApplicationController

  def index
    @current_user = User.find(session[:user_id])
    @tables = Table.all
    @foods = Food.all
    @orders = Order.all
  end

  def new
    @tables = Table.all
    @food = Food.all
    @order = Order.new
  end

  def create
    Order.create( order_params )
    redirect_to order_path
  end

  def show
    @orders = Order.all
    @order = Order.find(params[:id])
    @table = Table.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:food_id, :table_id)
  end

end
