class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.text :code
      t.integer :product_id
      t.text :inventory_date
      t.float :price
      t.integer :quantity
      t.integer :user_id
      t.timestamps
    end
  end
end
