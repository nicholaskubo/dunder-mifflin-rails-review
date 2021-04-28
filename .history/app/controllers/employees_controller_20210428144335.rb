class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
        end
    
        def show
        @employee = Employee.find(params[:id])
        end

        def new
        
        end

        def create
            session[:form_params] = params.inspect
            redirect_to new_employee_path
        end
end
