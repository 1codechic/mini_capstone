# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# polo2 = Product.new(name: "Polo_red", price: 68, image_url: "poloshirtred@someurl.com", description: "mens red polo shirt")
# polo3 = Product.new(name: "Polo_white", price: 68, image_url: "poloshirtwhite@someurl.com", description: "mens white polo shirt")
# pant1 = Product.new(name: "Polo_jeans", price: 87, image_url: "polojeans@someurl.com", description: "mens polo jeans")
# pant2 = Product.new(name: "denim_white", price: 87, image_url: "denimwhite@someurl.com", description: "mens white jeans")
# pant3 = Product.new(name: "denim_black", price: 87, image_url: "denimblack@someurl.com", description: "demim black jeans")

# polo2.save
# polo3.save
# pant1.save
# pant2.save
# pant3.save


#The code below will iterate through your products table and assign a random supplier id from the suppliers table
# products = Product.all

# products.each do |product|
#   #assign it a new supplier
#   supplier_id = Supplier.all.sample.id 
#   product.supplier_id = supplier_id
#   product.save
# end

# This codes hooks the existing urls from the Products table with the Images table
# products = Product.all

# products.each do |product| 
#   Image.create(
#     url: product.image_url,
#     product_id: product.id
#     )
# end