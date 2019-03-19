class ProductCategory < ApplicationRecord
  belongs_to :products
  belongs_to :category

end
