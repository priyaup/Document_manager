class EmployeeprojectsController < ApplicationController

before_action :set_employeeproject, only: %i[show edit update destroy]
	def index
		@employeeprojects = EmployeeProject.all
	end


	def new
		@employeeproject = EmployeeProject.new
	end

	def create
		@employeeproject = EmployeeProject.new(employeeproject_params)
		if @employeeproject.save
			redirect_to employee_projects_path, notice: 'Employeeproject has been created 
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
		
		if @employeeproject.update(employeeproject_params)
			redirect_to employee_projects_path, notice: 'Employeeproject has been Updated 
			successfully'
		else
			render :edit
		end
	end

	def destroy
		
		@employeeproject.destroy
		redirect_to employee_project_path, notice: 'Employee has been deleted
			successfully'
	end

	private

	def employee_params
		params.require(:employee).permit(:submission_date, :employee_id, :project_id)
  end 

  def set_employeeproject
		@employeeproject = EmployeeProject.find(params[:id])
	end
end