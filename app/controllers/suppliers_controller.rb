class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
     @supplier = Supplier.find(params["id"])
  end

  def new
    
  end

  def create
    supplier = Supplier.create(
                              name: params["name"],
                              email: params["email"],
                              phone: params["phone"],
                              )
    flash[:success] = "Supplier Created Successfully!"
    redirect_to "/supplier/#{supplier.id}"
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    @supplier.name = params[:name]
    @supplier.email = params[:email]
    @supplier.phone = params[:phone]
    @supplier.save
    flash[:success] = "Supplier Updated Successfully!"
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    flash[:success] = "Supplier Deleted Successfully!"
    redirect_to "/"
  end


end
