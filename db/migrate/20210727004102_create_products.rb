class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :discount_price
      t.float :original_price
      t.integer :user_id
      t.integer :category_id
      t.integer :inventory_id

      t.timestamps
    end
  end
end
