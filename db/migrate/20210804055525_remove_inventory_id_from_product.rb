class RemoveInventoryIdFromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :inventory_id
  end
end
