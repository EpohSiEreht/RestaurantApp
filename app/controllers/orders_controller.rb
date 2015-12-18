class OrdersController < ApplicationController

  def index
    @tables = Table.all
    @food_items = FoodItem.all
  end

end
