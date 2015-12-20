class Order < ActiveRecord::Base
  belongs_to :table
  belongs_to :food

  scope :by_time, -> { order('created_at DESC') }
end
