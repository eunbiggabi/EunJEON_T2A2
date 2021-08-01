class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.float :total
      t.integer :user_id
      t.integer :payment_id

      t.timestamps
    end
  end
end
