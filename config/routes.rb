Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/first_product", controller: "products", action: "first_product_method"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  #suppliers
  
  get "/suppliers" => "suppliers#index"


  #images
  get "/images" => "images#index"


  #users
  post "/users" => "users#create"

  #sessions
  post "/sessions" => "sessions#create"

  #orders
  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  #carted_products
  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  get "/carted_products/:id" => "carted_products#show"
  delete "/carted_products/:id" => "carted_products#destroy"

  


  # get "all_products/:name" => "products#all_products_method"
  # get "/query_params" => "products#query_params" 
end
