class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :type

      t.timestamps null: false
    end
  end
end
