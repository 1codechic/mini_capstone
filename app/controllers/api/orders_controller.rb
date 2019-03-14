class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      product_name: params[:product_name],
      quantity: params[:quantity],
      price: params[:price],
      tax: params[:tax],
      subtotal: params[:subtotal],
      total: params[:total]
      )
    if @order.save
      render 'order.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end
end
