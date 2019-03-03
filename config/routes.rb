Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/products" => "products#index"
    get "/product/:id" => "products#show"
    get "/single_product_segment/:id" => "products#single_product_segment"
  end

end
