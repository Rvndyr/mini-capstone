class ProductsController < ApplicationController
  
  def show
    product = Product.find_by(id:"#{params["id"]}")
    render json: product
  end

  def index
    product = Product.all
    render json: product
  end

  def create
    products_param = params["create"]
    product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
      if product.save
        Image.create(product_id: product.id, url: params[:image_url])
        render json: product
      else
        render json: {errors: product.errors.full_messages }, status: 422
      end
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
    product.description = params[:description] || product.description
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end
end
