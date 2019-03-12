class Supplier < ApplicationRecord

#grabs the products associated with the supplier_id
  def product
    Product.where(supplier_id: id)
  end

end
