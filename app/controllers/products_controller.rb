class ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.html.erb'
  end


  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    @suppliers = Supplier.all 
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )

    @product.save
    Image.create!(url: params[:image], product_id: @product.id)
    p "errors are below...if any"
    p @product.errors.full_messages
    render'show.html.erb'
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
   end

   def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.description = params[:description]
    @product.price = params[:price]

    @product.save

    render 'show.html.erb'
   end

   def destroy
    # @products = Product.all
    @product = Product.find_by(id: params[:id])
    @product.destroy

    render 'index.html.erb'
   end

end
