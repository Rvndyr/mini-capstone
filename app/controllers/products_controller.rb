class ProductsController < ApplicationController
  
  def id_product
    productid_param = params["id"]
    product = Product.find_by(id:"#{productid_param}")
    render json: product.as_json
  end

  def all_products
    products_param = params["list_products"]
    product = Product.all
    render json: product.as_json
  end
end
