class ProductsController < ApplicationController
  
  def show
    productid_param = params["id"]
    product = Product.find_by(id:"#{productid_param}")
    render json: product
  end

  def index
    products_param = params["index"]
    product = Product.all
    render json: product
  end

  def create
    products_param = params["create"]
    product = Product.create(
      name: params[:name], 
      price: params[:price], 
      img_url: params[:image_url], 
      description: params[:description]
      )
    render json: product
  end

  def delete
    product_param = params["id"]
    product = Product.find_by(id:"#{product_param}")
    product.delete
    render json: "#{product_param}"
  end

  def update
    product_param = params["id"]
    product = Product.find_by(id:"#{product_param}")
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.img_url = params[:image_url] || product.img_url
    product.description = params[:description] || product.description
    product.save
    render json: product
  end
end
