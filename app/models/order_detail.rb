class OrderDetail < ApplicationRecord
    belongs_to :order
    # may be issue bleow "belong_to :user"
    belongs_to :user 
end
