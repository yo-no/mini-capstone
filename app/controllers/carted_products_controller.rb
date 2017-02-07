class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
                                          product_id: params[:product_id],
                                          user_id: current_user.id,
                                          quantity: params[:quantity],
                                          status: "carted"
                                          )
    carted_product.save
    redirect_to "/carted_products/"   
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    if @carted_products.count == 0
      redirect_to "/"
    end

  end

end
