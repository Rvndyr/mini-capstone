class Supplier < ApplicationRecord
# has many products
# def products
#   Product.where(supplier_id: id)
# end
# could also be written like so:

has_many :products

end
