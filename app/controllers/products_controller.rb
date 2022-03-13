class ProductsController < ApplicationController
  # def first_product_method
  #   product = Product.first
  #   render json: product.as_json
  # end

  def index 
    products = Product.all
    render json: products.as_json
  end

  def show
    products = Product.find_by(id: params["id"])
    render json: products.as_json
  end

  def create
    products = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    products.save
    render json: products.as_json
  end 

  # def query_params
  #  input_name = params[:name]
  #  render json: {message: "This product is #{input_name}"}
  # end

  
end
