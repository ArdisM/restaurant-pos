class SessionsController < ApplicationController

  def create
    employee = Employee.find_by_name(params[:name])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to orders_path
    else
      redirect_to employee_new_path
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to long_in_path
  end

end
