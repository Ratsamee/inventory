class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :address
      t.text :phone_number
      t.text :email

      t.timestamps
    end
  end
end
