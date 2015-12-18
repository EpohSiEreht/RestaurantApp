class User < ActiveRecord::Base
  has_secure_password
  has_many :tables
  has_many :orders, through: :tables
end
