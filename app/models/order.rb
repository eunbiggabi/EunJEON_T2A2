class Order < ApplicationRecord
    has_one :product
    has_many :orders_details
end
