class ProductsController < ApplicationController

  def all_products
    @products = Product.all
  end

  def new_product
  end

  def product_success
    @product = Product.create(
                              name: params["name"],
                              size: params["size"],
                              color: params["color"],
                              price: params["price"],
                              image: params["image"],
                              description: params["description"],
                              )
  end

end
