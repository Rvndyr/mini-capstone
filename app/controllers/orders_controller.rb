class OrdersController < ApplicationController
  # authenticate user:
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
  orders = current_user.orders
  render json: orders
  end

  def create

      order = Order.new(
        user_id: current_user.id,
        subtotal: params[:subtotal], 
        tax: params[:tax],
        total: params[:total],
      )
      if order.save
        current_user.carted_products.status = "purchased"
        current_user.order_id = order.id
        render json: order
      else
        render json: {errors: order.errors.full_messages }, status: 422
      end
  end

  def show
    order = Order.find_by(id:params[:id])

    render json: order
  end
end
