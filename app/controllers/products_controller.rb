class ProductsController < ApplicationController
  def single_product
    render json: {message: "test"}
  end
end
