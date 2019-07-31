class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.text :code
      t.date :received_date
      t.integer :product_id
      t.float :cost
      t.float :rpp
      t.integer :quantity
      t.integer :qty_on_hand
      t.integer :user_id
      t.text :bin_location

      t.timestamps
    end
  end
end
