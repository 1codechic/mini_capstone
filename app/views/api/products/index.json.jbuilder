json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.description product.description
  #json.supplier product.supplier.name
  json.discounted product.is_discounted?
  json.category product.categories
  json.images product.images
end

