class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
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
      description: params[:input_description],
      supplier: params[:suplier_id]
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
    @product.description = params[:description] || @product.description
    @product.supplier = params[:supplier_id] || @product.supplier
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
