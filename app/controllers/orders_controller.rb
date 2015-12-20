class OrdersController < ApplicationController

  before_action :authenticate!

  def index
    @orders = Order.all
    @tables = Table.all
    @foods = Food.all
  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to orders_path
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    order.update( order_params )
    redirect_to orders_path
  end

  def destroy
    Order.delete(params[:id])
    redirect_to orders_path
  end


  private

  def order_params
    params.require(:order).permit(:food_id, :table_id, :is_done)
  end

end
