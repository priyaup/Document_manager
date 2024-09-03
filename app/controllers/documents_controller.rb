class DocumentsController < ApplicationController

	before_action :set_document, only: %i[show edit update destroy]
	 
	def index
		@documents = Document.all
	end


	def new
		@document = Document.new
	end

	def create
		@document = Document.new(document_params)
		if @document.save
			redirect_to documents_path, notice: 'document has been created 
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
		
		if @document.update(document_params)
			redirect_to documents_path, notice: 'document has been Updated 
			successfully'
		else
			render :edit
		end
	end

	def destroy
		
		@document.destroy
		redirect_to document_path, notice: 'document has been deleted
			successfully'
	end

	private

	def document_params
		params.require(:document).permit(:name, :doc_type, :employee_id)
  end 

  def set_document
		@document = Document.find(params[:id])
	end
end