class ProductsController < ApplicationController
  # def first_product_method
  #   product = Product.first
  #   render json: product.as_json
  # end

  def all_products_method
    watermelon = Product.find_by(name: "Watermelon")
    render json: watermelon.as_json
  end

  def query_params
   input_name = params[:name]
   render json: {message: "This product is #{input_name}"}
  end

  # def apple_method
  #   product = Product.first
  #   render json: product.as_json
  # end
end
