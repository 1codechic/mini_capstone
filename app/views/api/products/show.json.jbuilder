json.id @product.id
json.name @product.name
json.price @product.price
json.description @product.description
json.supplier_info @product.supplier
json.price_discounted @product.is_discounted?
json.tax @product.tax
json.total @product.total
