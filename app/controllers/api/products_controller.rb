class Api::ProductsController < ApplicationController

  def all_products
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

  def single_product
    @product = Product.find(params[:id])
    render 'single_product.json.jbuilder'
  end

  def single_product_segment
    @product = Product.find(params[:id])
    render 'single_product.json.jbuilder'
  end

end
