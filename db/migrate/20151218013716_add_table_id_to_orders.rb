class AddTableIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :table_id, :integer
  end
end
