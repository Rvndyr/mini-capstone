class CartedProductsController < ApplicationController
  def create
    carted = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: nil
    )
    if carted.save
      render json: carted
    else
      render json: {errors: carted.errors.full_messages }, status: 422
    end
  end

  def index
    carted = current_user.carted_products.where(status:"carted")
    render json: carted
  end

end
