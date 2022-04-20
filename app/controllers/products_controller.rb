class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show] 
  
  # def first_product_method
  #   product = Product.first
  #   render json: product.as_json
  # end

  def index 
    products = Product.all
    render json: products
  end

  def show
    products = Product.find_by(id: params["id"])
    render json: products
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"]
    )
    
    if product.save
    render json: product
    else 
    render json: {error_messages: product.errors.full_messages}, status: 422
    end
  end 

  def update
    products_id = params["id"]
    products = Product.find_by(id: products_id)

    products.name = params["name"] || products.name
    products.price = params["price"] || products.price
    products.description = params["description"] || products.description

    products.save
    render json: products
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
