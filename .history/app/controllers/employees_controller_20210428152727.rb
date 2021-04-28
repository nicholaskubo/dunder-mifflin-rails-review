class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
        end
    
        def show
        @employee = Employee.find(params[:id])
        end

        def new
        @employee = Employee.new
        end

        def create
            @employee = Employee.new(employee_params)
            @employee.save
            redirect_to employee_path(@employee)
        end

        def update
          @employee = Employee.find(params:[id])
          @employee.update(employee_params)
          redirect_to employee_path(@employee)
        end

        private

  def employee_params
    params.require(:employee).permit!
  end


end
