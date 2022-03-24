Supplier.create!([
  {name: "Whole Foods", email: "produce@test.com", phone_number: "3214569877"},
  {name: "Amazon Fresh", email: "freshe@test.com", phone_number: "987123456677"}
])





Product.create!([
  {name: "Strawberry", price: "3.0", description: "It is a fruit", items: 7, supplier_id: 1},
  {name: "Apple", price: "1.0", description: "It is a fruit", items: 8, supplier_id: 2},
  {name: "Pear", price: "1.0", description: "It is a fruit", items: 5, supplier_id: 2},
  {name: "Blueberries", price: "5.0", description: "It is a fruit", items: 9, supplier_id: 1},
  {name: "Orange", price: "2.0", description: "It is a fruit", items: 6, supplier_id: 2},
  {name: "Watermelon", price: "2.0", description: "It is a fruit", items: 3, supplier_id: 2}
  ])

 Image.create!([
  {product_id: 1, url:"https://th-thumbnailer.cdn-si-edu.com/Cs6bYXJ_UrqcMVTSF9rK7uhQXSU=/1072x720/filters:no_upscale()/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/39/3c/393c51d9-ce11-49ce-9d41-5ef599dfabea/bn8e34.jpg"},

  {product_id: 2, url: "https://media.istockphoto.com/photos/red-apple-with-leaf-isolated-on-white-background-picture-id185262648?b=1&k=20&m=185262648&s=170667a&w=0&h=2ouM2rkF5oBplBmZdqs3hSOdBzA4mcGNCoF2P0KUMTM="},

  {product_id: 3, url: "https://m.media-amazon.com/images/I/61OHAsXEmgL._SS500_.jpg"},
  {product_id: 4, url: "https://images.heb.com/is/image/HEBGrocery/001146492?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0"},
  {product_id: 5, url: "https://media.istockphoto.com/photos/orange-picture-id185284489?k=20&m=185284489&s=612x612&w=0&h=LLY2os0YTG2uAzpBKpQZOAC4DGiXBt1jJrltErTJTKI="},
  {product_id: 6, url: "https://i5.walmartimages.com/asr/624f8431-b244-4b3a-9864-eca1268d6b37.85304a9e75827db6de5e2da988b22b7e.jpeg"}
])



