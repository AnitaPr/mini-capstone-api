class ProductsController < ApplicationController
  def first_product_method
    product = Product.first
    render json: product.as_json
  end

  def all_products_method
    product = Product.all
    render json: product.as_json
  end
end
