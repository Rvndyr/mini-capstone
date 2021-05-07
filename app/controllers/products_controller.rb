class ProductsController < ApplicationController
  
  def show
    productid_param = params["id"]
    product = Product.find_by(id:"#{productid_param}")
    render json: product.as_json
  end

  def index
    products_param = params["index"]
    product = Product.all
    render json: product.as_json
  end

  def create
    products_param = params["create"]
    product = Product.create(name: "nintendo", price:100, img_url: "example.jpg", description: "yea no one wants it")
    render json: product.as_json
  end

  def delete
    product_param = params["id"]
    product = Product.find_by(id:"#{product_param}")
    product.delete
    render json: "#{product_param}"
  end
end
