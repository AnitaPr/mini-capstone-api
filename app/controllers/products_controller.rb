class ProductsController < ApplicationController
  # def first_product_method
  #   product = Product.first
  #   render json: product.as_json
  # end

  def all_products_method
    watermelon = Product.find_by(name: "Watermelon")
    render json: watermelon.as_json
  end

  # def apple_method
  #   product = Product.first
  #   render json: product.as_json
  # end
end
