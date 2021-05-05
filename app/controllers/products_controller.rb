class ProductsController < ApplicationController
  
  def first_product
    product = Product.first
    render json: product.as_json
  end

  def all_products
    product = Product.all
    render json: product.as_json
  end
end
