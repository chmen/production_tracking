class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html do
          redirect_to games_path, notice: 'Employee was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :role)
  end
end
