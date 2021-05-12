class SuppliersController < ApplicationController
  def index
    supplier = Supplier.all
    render json: supplier
  end

  def show
    supplier = Supplier.find_by(id:"#{params["id"]}")
    render json: supplier
  end

  def create
    products_param = params["create"]
    supplier = Supplier.new(
      name: params[:name], 
      price: params[:price], 
      img_url: params[:image_url], 
      description: params[:description]
      )
      if supplier.save
        render json: supplier
      else
        render json: {errors: supplier.errors.full_messages }, status: 422
      end
  end

  def delete
    supplier = Supplier.find_by(id:"#{params["id"]}")
    supplier.delete
    render json: "#{params["id"]}"
  end

  def update
    supplier = Supplier.find_by(id:"#{params["id"]}")
    supplier.name = params[:name] || supplier.name
    supplier.price = params[:price] || supplier.price
    supplier.img_url = params[:image_url] || supplier.img_url
    supplier.description = params[:description] || supplier.description
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: 422
    end
  end
end
