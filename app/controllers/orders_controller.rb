class OrdersController < ApplicationController

  def index
    @current_user = User.find(session[:user_id])
    @tables = Table.all
    @food = FoodItem.all
  end

  def new
    @order = Order.new
  end

  def create
    Order.create( order_params )
    redirect_to '/orders/summary'
  end

  def summary
    Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:food_id, :table_id)
  end

end
