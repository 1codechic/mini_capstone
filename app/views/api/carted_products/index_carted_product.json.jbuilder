json.array! @carted_products do |carted_product|
  json.id carted_product.id
  json.product carted_product.product
  json.quantity carted_product.quantity
  json.user carted_product.user
end

