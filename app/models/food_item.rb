class FoodItem < ActiveRecord::Base
  has_many :orders
  
end
