class OfficesController < ApplicationController
  before_action :set_office, only: %i[show edit update destroy] 
	def index
		@offices = Office.all 
	end

	def new
		@office = Office.new
	end

	def create
		@office = Office.new(office_params)
		if @office.save
			redirect_to offices_path, notice: 'Member has been created 
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
		if @office.update(office_params)
			redirect_to offices_path, notice: 'Member has been updated
			successfully'
		else
			render :edit
		end
	end

	def destroy
		@office.destroy
		redirect_to offices_path, notice: 'Member has been destroy successfully'
	end

	private
	def office_params
		params.require(:office).permit(:office_name, :number_of_employees, :branch)
  end

  def set_office
		@office = Office.find(params[:id])
	end 
end
