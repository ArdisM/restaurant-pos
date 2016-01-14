class AdminsController < ApplicationController
  def index
    redirect_to log_in_path
  end

  def new
    @admin = Admin.new
  end

  def create
    Admin.create( admin_params )
    redirect_to root_path
  end

  def profile
    current_user
    @foods = Food.all
    @food = Food.new
    @employees = Employee.all
    @employee = Employee.new
  end

  def log_in

  end

  private
  def admin_params
    params.require(:admin).permit(:username, :password)
  end
end
