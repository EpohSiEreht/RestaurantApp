class AddAnotherColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :note, :string
  end
end
