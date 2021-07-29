class Product < ApplicationRecord

    has_one_attached :picture
    belongs_to :category
    
    validates :name, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { minimum: 6, maximum: 200 }

    validates :description, presence: true,  
                        length: { minimum: 6, maximum: 5000 }

   
end
