class ProductsController < ApplicationController

  def index
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_amount = params[:discount]
    category_type = params[:category]

    if category_type
      category = Category.find_by(name: category_type)
      @products = category.products
    end

    if discount_amount
      @products = @products.where("price < ?", discount_amount)
    end

    if sort_order && sort_attribute
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
  end

  # def random
  #   @product = Product.all.sample
  #   redirect_to "/products/#{@product.id}"
  # end

  def show
     product_id = params["id"]
     if product_id == "random"
       @product = Product.all.sample
       redirect_to "/products/#{@product.id}"
     else
      @product = Product.find(params["id"])
     end
  end

  def new
    
  end

  def create
    product = Product.create(
                              name: params["name"],
                              size: params["size"],
                              color: params["color"],
                              price: params["price"],
                              supplier_id: params[:supplier][:supplier_id],
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

  def search
    search_term = params[:search_term]
    @products = Product.where("name iLIKE ? OR description iLIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end

end
