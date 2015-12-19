class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to orders_path
  end

  def destroy
    Order.delete(params[:id])
    redirect_to orders_path
  end


  private

  def order_params
    params.require(:order).permit(:food_id, :table_id)
  end

end
