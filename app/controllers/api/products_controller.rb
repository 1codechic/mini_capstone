class Api::ProductsController < ApplicationController

  def index
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    elsif 
      search_term = params[:price]
      @products = @products.where("price LIKE ?", )
    else
      @products= Product.all
    end

    if params[:discount] == "true"
      @products = @products.where("price < ?", 50)
    end

    if params[:sort] && params[:order]
    @products = @products.order(params[:sort] => params[:order])
    end
    render 'index.json.jbuilder'
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_url],
      description: params[:input_description]
      )
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.destroy
    render 'show.json.jbuilder'
  end

end
