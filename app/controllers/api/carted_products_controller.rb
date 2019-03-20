class Api::CartedProductsController < ApplicationController

  def create

      if current_user 
        @carted_product = CartedProduct.create(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        status: "carted"
        )
      render 'show.json.jbuilder'
    end
  end


    def show
      carted_product_id = params[:id]
      @carted_product = CartedProduct.find_by(id: carted_product_id)
      
      render 'show.json.jbuilder'
    end

    def index
      @carted_products = CartedProduct.all
      @carted_products = @carted_products.where(user_id: current_user.id)
      @carted_products = @carted_products.where(status: "carted")
      render 'index.json.jbuilder'
    end
end