class ProductSerializer < ActiveModel::Serializer
  attributes :id, :is_discounted, :tax, :supplier_id
end
