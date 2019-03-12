class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true, length: { in: 10..500}

  def is_discounted?
    if price < 10
      true
    else
      false
    end
  end

  def tax
   tax_rate = price * 0.09
  end

   def total
   tax_rate = price * 0.09
   total_price = price + tax_rate
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

end
