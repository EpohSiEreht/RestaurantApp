class User < ActiveRecord::Base
  has_secure_password
  # Basically it's a method for the code below
  # def password=(new_password)
  #   self.password_digest = Password.create(new_password)
  # end

  has_many :orders
  has_many :tables, through: :orders
  has_many :foods, through: :orders
  #
  validates :email, presence: true
  validates :password, confirmation: true
  validates :level, presence: true
end
