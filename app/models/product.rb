class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :description, length: {in: 10..500}

# def supplier
#   Supplier.find_by(id: supplier_id)
# end

# ^this could also be written like so: 
belongs_to :supplier

has_many :images
has_many :categories
has_many :categories, through: :category_products 
has_many :carted_products

def is_discounted
  if price < 10
    return true
  else
    return false
  end
end

def tax 
  taxed = price * 0.09
  return taxed
end
end
