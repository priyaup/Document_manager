class TasksController < ApplicationController
	before_action :set_task, only: %i[show edit update destroy]
	def index
		@tasks = Task.all
	end


	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to tasks_path, notice: 'task has been created 
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
		
		if @task.update(task_params)
			redirect_to tasks_path, notice: 'task has been Updated 
			successfully'
		else
			render :edit
		end
	end

	def destroy
		
		@task.destroy
		redirect_to task_path, notice: 'task has been deleted
			successfully'
	end

	private

	def task_params
		params.require(:task).permit(:title, :employee_id)
  end 

  def set_task
		@task = Task.find(params[:id])
	end
end