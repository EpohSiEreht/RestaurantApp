class User < ActiveRecord::Base
  has_secure_password
  # Basically it's a method for the code below
  # def password=(new_password)
  #   self.password_digest = Password.create(new_password)
  # end


  has_many :tables
  has_many :orders, through: :tables
  # has_many :foods, through: :orders
end
