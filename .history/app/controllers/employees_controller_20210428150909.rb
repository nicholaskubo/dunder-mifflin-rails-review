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
            redirect_to new_employee_path(@employee)
        end

        private

  def student_params
    params.require(:student).permit!
  end

  
end
