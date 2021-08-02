class CreateUserAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.text :address_line
      t.string :city
      t.string :postcode

      t.timestamps
    end
  end
end
