class Order < ActiveRecord::Base
  belongs_to :table
  belongs_to :food

  scope :by_time, -> { order('created_at DESC') }

  def status
    if self.is_done == 0
      "Completed!"
    else
      "Not Ready"
    end
  end
end
