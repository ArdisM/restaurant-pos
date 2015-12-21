class FoodsController < ApplicationController

  def index
    @foods = Food.all
    @food = Food.new
  end


  def create
    authenticate!
    food = Food.create(food_params)
    redirect_to foods_path
  end

  def destroy
    authenticate!
    Food.delete(params[:id])
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :classification, :price)
  end

end
