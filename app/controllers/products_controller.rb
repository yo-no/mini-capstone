class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    product_id = params["id"]
    @product = Product.find(params["id"])
  end


  # def product_success
  #   @product = Product.create(
  #                             name: params["name"],
  #                             size: params["size"],
  #                             color: params["color"],
  #                             price: params["price"],
  #                             image: params["image"],
  #                             description: params["description"],
  #                             )
  # end

end
