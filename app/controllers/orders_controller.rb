class OrdersController < ApplicationController
  before_action :authenticate_admin

  def index
    orders = Orders.all
    render json: orders.as_json
  end


  def create

    product = Product.find_by(id: params[:product_id])
    
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax =  calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax


    order = Order.new(
    user_id: current_user.id,
    product_id: params["product_id"],
    quantity: params["quantity"],
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: alculated_total
  )
   if order.save
    render json: order.as_json
   else
    render json: {errors: order.errors.full_messages}, status: :bad_request
   end
  end

  def show
   orders = Order.find_by(id: params["id"])
   render json: order.as_json
  end
end
