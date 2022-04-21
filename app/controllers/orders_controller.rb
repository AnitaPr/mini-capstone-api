class OrdersController < ApplicationController
  before_action :authenticate_admin

  def index
    orders = Orders.all
    render json: orders.as_json
  end


  def create
  
    carted_products = current_user.carted_products.where(status: "carted")
    
    # calculated_subtotal = product.price * params[:quantity].to_i
    # calculated_tax =  calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax

    calculated_subtotal = 0
    carted_products.each do |carted_product|
    calculated_subtotal += carted_product.quantity * carted_product.product.price
    calculated_tax =  calculated_subtotal * 0.09
    alculated_total = calculated_subtotal + calculated_tax


    order = Order.new(
    user_id: current_user.id,
    # product_id: params["product_id"],
    # quantity: params["quantity"],
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
  )
  
   if order.save
    carted_products.update_all(status: ["purchased"], order_id: order.id)
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
