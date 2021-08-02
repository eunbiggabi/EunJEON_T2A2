json.extract! product, :id, :name, :description, :discount_price, :original_price, :user_id, :category_id, :inventory_id, :created_at, :updated_at
json.url product_url(product, format: :json)
