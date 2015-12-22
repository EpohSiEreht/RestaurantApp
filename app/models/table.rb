class Table < ActiveRecord::Base
  has_many :orders
  has_many :foods, through: :orders

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :party_size, presence: true
end
