json.array! @products do |product|
  json.partial! "products.json.jbuilder", product: product
end

