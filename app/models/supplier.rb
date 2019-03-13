class Supplier < ApplicationRecord
has_many :products

#grabs the products associated with the supplier_id
  # def products
  #   Product.where(supplier_id: id)
  # end

end
