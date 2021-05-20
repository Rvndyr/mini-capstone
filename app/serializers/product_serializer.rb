class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted, :tax, :supplier, :images
  has_many :categories
end
