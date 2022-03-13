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

  def update
    products_id = params["id"]
    products = Product.find_by(id: products_id)

    products.name = params["name"] || products.name
    products.price = params["price"] || products.price
    products.image_url = params["image_url"] || products.image_url
    products.description = params["description"] || products.description

    products.save
    render json: products.as_json
  end

  def destroy
    products_id = params["id"]
    products = Product.find_by(id: products_id)
    products.destroy
    render json: {message: "Product deleted successfully"}
  end

  # def query_params
  #  input_name = params[:name]
  #  render json: {message: "This product is #{input_name}"}
  # end

  
end
