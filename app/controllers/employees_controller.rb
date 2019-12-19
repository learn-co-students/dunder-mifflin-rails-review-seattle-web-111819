class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
      end
    
      def new
        @employee = Employee.new
      end
    
      def show
        find_employee
      end
    
      def create
        @employee = Employee.new(employee_params)
    
        if @employee.save
          redirect_to employees_path
        else
          render :new
        end
      end
    
      def edit
        find_employee
      end
      
      def update
        find_employee  #find employee by id
    
        if @employee.update(employee_params)
          redirect_to employee_path
        else
          render :edit
        end
      end
    
      def destroy
        find_employee
    
        @employee.destroy
        redirect_to employees_path
      end
    
      private
      
      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
      end
    
      def find_employee
        @employee = Employee.find(params[:id])
      end
end
