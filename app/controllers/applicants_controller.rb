class ApplicantsController < ApplicationController
	before_filter { @applicants_link = 'active' }
	before_filter :get_applicant, only: [:show, :edit, :update, :destroy]
	
	def get_applicant
		@applicant = Applicant.find params[:id]
	end
	
	def index
		@applicants = Applicant.all
	end
	
	def show
	end
	
	def edit
	end
	
	def update
		@applicant.attributes = params[:applicant]
		
		if @applicant.save
			redirect_to requests_path
		else
			render :edit
		end
	end
	
	def destroy
		@applicant.destroy
		redirect_to requests_path
	end
end