class ProjectsController < ApplicationController
before_action :set_project, only: %i[show edit update destroy]
	def index
		@projects = Project.all
	end


	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to projects_path, notice: 'project has been created 
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
		
		if @project.update(project_params)
			redirect_to projects_path, notice: 'project has been Updated 
			successfully'
		else
			render :edit
		end
	end

	def destroy
		
		@project.destroy
		redirect_to project_path, notice: 'project has been deleted
			successfully'
	end

	private

	def project_params
		params.require(:project).permit(:name, :description)
  end 

  def set_project
		@project = Project.find(params[:id])
	end
end