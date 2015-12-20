class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :is_done, :integer
  end
end
