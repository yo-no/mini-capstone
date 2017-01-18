# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do 
  product = Product.new(name: Faker::Name.name+ " T-Shirt", size:"L", color: "White", price: rand(1000), description: Faker::Hipster.paragraph(2), image:"http://pngimg.com/upload/tshirt_PNG5426.png")
  product.save
end