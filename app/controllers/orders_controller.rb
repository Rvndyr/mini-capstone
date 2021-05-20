class OrdersController < ApplicationController
  # authenticate user:
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
  orders = Order.all
  render json: orders
  end

  def create
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: params[:subtotal], 
        tax: params[:tax],
        total: params[:total],
      )
      if order.save
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
