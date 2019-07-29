class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :code
      t.text :name
      t.text :dimension
      t.text :style
      t.text :description
      t.text :brand
      t.text :image
      t.text :category_id

      t.timestamps
    end
  end
end
