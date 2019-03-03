json.array! @products do |product|
  json.product_name product.name
  json.price product.price
  json.image_url product.image_url
  json.description product.description
end

