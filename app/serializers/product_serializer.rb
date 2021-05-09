class ProductSerializer < ActiveModel::Serializer
  attributes :id, :is_discounted, :tax
end
