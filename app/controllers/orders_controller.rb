class OrdersController < ApplicationController
  def new
  end

  def create
    order = Order.new(
                       user_id: current_user.id,
                       )

    order.calculate_subtotal
    order.calculate_tax
    order.calculate_total
    
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params["id"])
  end

end
