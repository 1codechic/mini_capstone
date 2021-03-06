class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
      @orders = current_user.orders
      render 'index.json.jbuilder'
  end

  def create
    #subtotal = quantity * price
      @carted_products = CartedProduct.all
      @carted_products = @carted_products.where(user_id: current_user.id)
      @carted_products = @carted_products.where(status: "carted")
    #product = Product.find_by(id: params[:product_id]) #allows us to get all info of the product
    subtotal = 0

    @carted_products.each do |carted_product|
      product_total = carted_product.product.price * carted_product.quantity
      subtotal += product_total
    end

    tax_rate = 0.09
    tax = subtotal * tax_rate
    total = subtotal + tax
   
    @order = Order.new(
      user_id: current_user.id,  #based on whose logged in
      subtotal: subtotal,
      tax: tax,
      total: subtotal
      )
    if @order.save
      @carted_products.each do |carted_product|
        carted_product.update(order_id: @order.id, status: "purchased")
        end
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
