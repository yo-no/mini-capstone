class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    product_id = params["id"]
    @product = Product.find(params["id"])
  end

  def new
    
  end

  def create
    product = Product.create(
                              name: params["name"],
                              size: params["size"],
                              color: params["color"],
                              price: params["price"],
                              image: params["image"],
                              description: params["description"],
                              )
    flash[:success] = "Product Created Successfully!"
    redirect_to "/products/#{product.id}"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name]
    @product.size = params[:size]
    @product.color = params[:color]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.image = params[:image]
    @product.save
    flash[:success] = "Product Updated Successfully!"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash[:success] = "Product Deleted Successfully!"
    redirect_to "/"

  end

end
