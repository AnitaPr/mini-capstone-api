class CartedProductsController < ApplicationController
 
  def create
    carted_products = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: [:nil]
    )

    if carted_products.save
    render json: carted_products
    else render json: {error_messages: carted_products.errors.full_messages}, status: 422
    end
     
  end

  def index
   carted_products = current_user.carted_products.where(status: "carted")
   render json: carted_products.as_json
  end

  def show 
   carted_products = CartedProduct.find_by(status: "carted")
  render json: carted_products
  end


  def destroy
    carted_products = CartedProduct.find(params[:id])
    carted_products.status = "removed"
    if carted_products.save
      render json: {status: "Carted Product Removed!"}
    else 
      render json: {status: "Something is wrong"}
    end
  end




end
