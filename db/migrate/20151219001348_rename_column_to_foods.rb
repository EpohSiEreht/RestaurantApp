class RenameColumnToFoods < ActiveRecord::Migration
  def change
    rename_column :foods, :type, :category
  end
end
