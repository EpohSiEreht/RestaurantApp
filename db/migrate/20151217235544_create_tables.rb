class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :party_size
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
