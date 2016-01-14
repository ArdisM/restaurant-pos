class SessionsController < ApplicationController

  def create
    employee = Employee.find_by_name(params[:name])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to parties_new_path
    else
      redirect_to log_in_path
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to log_in_path
  end

  def create
    admin = Admin.find_by_username(params[:username])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to employees_new_path
    else
      redirect_to root_path
    end
end
  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end

end
