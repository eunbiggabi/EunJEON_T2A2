class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.float :total_price
      t.string :stripe_payment_id
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
