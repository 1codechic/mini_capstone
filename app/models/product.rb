class Product < ApplicationRecord
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
end
