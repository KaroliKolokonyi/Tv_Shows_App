class CartedproductsController < ApplicationController

def index

 orders = Order.where("user_id = ? AND completed = ?", current_user.id, false)
  @carted_product=CartedProduct.where(order_id:orders.first.id)
  end


  def create
    orders = Order.where( "user_id = ? AND completed = ?", current_user.id, false)

    if orders.first
      order = orders.first
    else
      order = Order.new(user_id: current_user.id, completed: false)
      order.save
    end

    carted_product = CartedProduct.new(

      order_id: order.id, 
      product_id: params[:product_id],
      quantity: params[:quantity]

      )

    carted_product.save
    redirect_to "/carted_products"
  end

end
