# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = ["Elbow", "Knee", "Shoulder", "Back", "Hand", "Leg", "Wrist", "Ankle"]
inventories = [10, 20, 50, 100, 200]

if Category.count == 0
    categories.each do |category|
        Category.create(name: category)
        puts "Created #{category} category"
    end
end

if Inventory.count == 0
    inventories.each do |inventory|
        Inventory.create(quantity: inventory)
        puts "Created #{inventory} category"
    end
end

if User.count == 0 
    User.create(email: "admin@user.com", password: "admin1", password_confirmation: "admin1", admin: true)
    User.create(email: "normal@user.com", password: "normal1", password_confirmation: "normal1", admin: false)
end