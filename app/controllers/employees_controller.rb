class EmployeesController < ApplicationController
    before_action :find_emp, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(emp_params)
        if @employee.save
            redirect_to employee_path(@employee)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @employee.update_attributes(emp_params)
            redirect_to employee_path(@employee)
        else
            render :edit
        end
    end

    private

    def find_emp
        @employee = Employee.find(params[:id])
    end

    def emp_params
        params.require(:employee).permit(:first_name, :last_name, :title, :office, :alias, :dog_id)
    end

end
