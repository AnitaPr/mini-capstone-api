Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/first_product", controller: "products", action: "first_product_method"
  get "/all_products", controller: "products", action: "all_products_method"
  get "/apple", controller: "products", action: "apple_method"
end
