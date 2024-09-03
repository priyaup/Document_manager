class EmployeesController < ApplicationController 
	before_action :set_employee, only: %i[show edit update destroy]
	def index
		@employees = Employee.all
	end


	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
			redirect_to employees_path, notice: 'Employee has been created 
			successfully'
		else
			render :new
		end
	end


	def show
	
	end

	def edit
		
	end

	def update
		
		if @employee.update(employee_params)
			redirect_to employees_path,status: :see_other, notice: 'Employee has been Updated 
			successfully'
		else
			render :edit
		end
	end

	# def destroy
		
	# 	@employee.destroy
	# 	redirect_to employee_path, notice: 'Employee has been deleted
	# 		successfully'
	# end

	private

	def employee_params
		params.require(:employee).permit(:first_name, :last_name, :email)
  end 

  def set_employee
		@employee = Employee.find(params[:id])
	end
end