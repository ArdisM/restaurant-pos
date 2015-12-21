class OrdersController < ApplicationController


  def index
    @order = Order.new
    @orders = Order.all
  end

  def create
    Order.create(order_params)
    redirect_to orders_path
  end

  def destroy
    Order.delete(params[:id])
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:party_id, :food_id, :employee_id)
  end

end
