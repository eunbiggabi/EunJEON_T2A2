json.extract! user_address, :id, :firstname, :lastname, :address_line, :city, :postcode, :user_id, :created_at, :updated_at
json.url user_address_url(user_address, format: :json)
