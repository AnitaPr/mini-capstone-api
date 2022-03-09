# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create(name:"Apple", price:1, image_url:"https://media.istockphoto.com/photos/red-apple-with-leaf-isolated-on-white-background-picture-id185262648?b=1&k=20&m=185262648&s=170667a&w=0&h=2ouM2rkF5oBplBmZdqs3hSOdBzA4mcGNCoF2P0KUMTM=", description: "fruit" ) 

Product.create(name:"Blueberries", price: 5, image_url:"https://images.heb.com/is/image/HEBGrocery/001146492?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0", description:"fruit")

Product.create(name:"Watermelon", price:2, image_url:"https://i5.walmartimages.com/asr/624f8431-b244-4b3a-9864-eca1268d6b37.85304a9e75827db6de5e2da988b22b7e.jpeg", description:"fruit")

puts "All products added!"